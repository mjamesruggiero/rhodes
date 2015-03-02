# rhodes

Experimentation with statistics.

## Build & Run ##

This repo is built with SBT

In order to run the project, follow the instructions below after cloning the repo: 

```
> cd rhodes
```

You may need to update the permissions for sbt execution with chmod thus:

```
> chmod +x sbt
```

In order to run the repo:

```
> ./sbt
> container:start
> browse
```

If `browse` doesn't launch your browser, manually open [http://localhost:8070/](http://localhost:8070/) in your browser. You should see a hello world message. 

## Packaging & Deployment ##

This package uses an SBT plugin for Scalatra services enabling bundling of all JAR dependencies, project class files and a run script into a zip file.

Running the packager is easy, simply follow the steps below in the repo:

```
./sbt
> test
> dist
```

## Health ##

In order to test for health, ping the /health route, it should return a 200 message if all is well

Thereafter you should find the deployment zip file in the ```target``` folder with the release name. Inside it the run script is found in the ```bin``` folder entitled ```run_server```.

## Further Scalatra Information ##

Scalatra homepage: [http://www.scalatra.org/](http://www.scalatra.org/)

Scalatra API Docs: [http://www.scalatra.org/2.2/api/](http://www.scalatra.org/2.2/api/)

## Tests ##

This repo makes use of ScalaTest, ScalaCheck and Mockito for testing.

ScalaTest user guide: [http://www.scalatest.org/user_guide](http://www.scalatest.org/user_guide)

ScalaCheck user guide: [https://github.com/rickynils/scalacheck/wiki/User-Guide](https://github.com/rickynils/scalacheck/wiki/User-Guide)

## What's with the name?

Named after Charlie, whoever she is.

<img src="http://41.media.tumblr.com/5fb0f5812624a09ec9ded5f7725f2a41/tumblr_n86vjbwKc21r9zrzwo1_1280.jpg" alt="Charlie Rhodes" width="500" height="280"/>
