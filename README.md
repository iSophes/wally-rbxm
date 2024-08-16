# Wally-RBXM

This package is designed for devs with a studio that want packages that are on wally, yet want to keep their studio workflow.

Step 1.

Get rokit [Go to this link to see how!](https://github.com/rojo-rbx/rokit)             

Step 2. 

Go to this directory in a terminal and run rokit install. This will install Rojo and Lune, two dependencies of the project!

Step 3 (WINDOWS).

We use sh files (bash) for our code to run, this will require you to get [Git bash](https://git-scm.com/downloads) to run the sh file on windows. Once you have it, go to this folder in file explorer, right click and open in git bash. Continue to step 4 once done.

Step 3 (MACOS).

We use sh files (bash) for our code to run, we can't run the code directly from the terminal though. We just need a quick permissions change.

Open the terminal and run the following code:

```chmod +x wallyrbxm.sh```

Congrats! We have given MacOS permissions to run our bash script!

Step 3 (Linux).

Nothing to do! Linux already supports bash scripts out of the box!

Step 4.

Run ```wally init``` and under "Dependencies" put your wally packages. You can find all the packages [Here](https://wally.run). Once you have all the packages, save the file!

NOTE: If you have server packages, add the following code into default.project.json:

```json
    "ServerScriptService": {
      "ServerPackages": {
        "$path": "ServerPackages"
      }
    }
```

This lets rojo know where your server packages are so the tool can automatically convert these server packages to an rbxm as well!

Step 5.

In whichever terminal you're using, navigate to this folder (Wally-Convert) and run the following command:

```sh wallyrbxm.sh```

This will install your wally packages and neatly put them into a folder named "Packages", it will then turn this packages folder into an rbxm file that you can access at "packages.rbxm" and "serverpackages.rbxm" - if you have any server packages.  

--------------------------------

Why do we install Rojo?

We install Rojo because the code requires the place to be built, and then it grabs the packages from a built place and puts them into an rbxm for you to use!

Why Lune?

[Lune is a standalone Luau script runtime.](https://lune-org.github.io/docs), which is what we need to run the code as the main code is written in Luau!
