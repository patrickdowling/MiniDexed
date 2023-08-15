# Build with docker

I tend to like a well-defined and reproducable build environment, so this is a quick experiment to build locally on OS X
in a docker container.

Starting in main repo directory, build the image
```
make -C docker
```

Run
```
docker run --rm -it -v $(pwd):/build pld/minidexed env RPI=4 bash -ex ./build.sh
```
or similar :)
