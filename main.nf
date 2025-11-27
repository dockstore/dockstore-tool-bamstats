#!/usr/bin/env nextflow
nextflow.enable.dsl=2

bamFile = Channel.fromPath(params.bam_input)
mem_gb = params.mem_gb

process bamstats {
    input:
    path(bam_input)
    val mem_gb

    output:
    path('bamstats_report.zip')

    """
    bash /usr/local/bin/bamstats $mem_gb $bam_input
    """
}

workflow {
    bamstats(bamFile, mem_gb)
}
