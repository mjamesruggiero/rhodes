version in ThisBuild := "0.1." + sys.env.getOrElse("BUILD_NUMBER", "0-SNAPSHOT")