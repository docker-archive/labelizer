# labelizer

Injects tutum.yml into Dockerfiles as an image label for one click configuration in tutum.co

## Usage

    docker run -v $(pwd):/image tutum/labelizer

Note that for proper working user should be in the path where the Dockerfile and the tututm.yml are before running the container. In addition, the user can change $(pwd) with the absolute path where the files are.

## Notes

* The whole yaml file should be written with proper yaml sintax, otherwise an error will be displayed.
