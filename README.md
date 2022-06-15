[![Docker Repository on Quay.io](https://quay.io/repository/collaboratory/dockstore-tool-bamstats/status "Docker Repository on Quay.io")](https://quay.io/repository/collaboratory/dockstore-tool-bamstats)

# dockstore-tool-bamstats

A repo for the `Dockerfile` to create a Docker image for the BAMStats command.

## Validation 

The CWL version of this tool has been validated as a CWL draft-3 and v1.0 CommandLineTool. 

Versions that we tested with are the following 
```
avro (1.8.1)
cwl-runner (1.0)
cwl-upgrader (0.1.1)
cwltool (1.0.20160712154127)
schema-salad (1.14.20160708181155)
setuptools (25.1.6)
```


## Building Manually

Normally you would let [Quay.io](http://quay.io) build this.  But, if you need to build
manually you would execute:

    docker build -t collaboratory/dockstore-tool-bamstats:1.25-3 .

## Running Manually

```
$ wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/phase3/data/NA12878/alignment/NA12878.chrom20.ILLUMINA.bwa.CEU.low_coverage.20121211.bam
$ docker run -w="/home/ubuntu" -v `pwd`:/home/ubuntu --user `echo $UID`:1000 quay.io/collaboratory/dockstore-tool-bamstats:1.25-6 bamstats 4 NA12878.chrom20.ILLUMINA.bwa.CEU.low_coverage.20121211.bam
```
You'll then see a file, `bamstats_report.zip`. Using the command above, it will automatically be mounted out of the container.