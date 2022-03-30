#! /usr/bin/bash
 echo "welcome to taiwnind installer by dark rabel it will only work in debian"
 echo ".................."
 echo ".................."
 echo "       ..         "
 echo "       ..         "
 echo "       ..         "
 echo "       ..         "
 echo "       ..         "
 echo "       ..         "

#  //------------------//
#  folder creation
#  //------------------//
 echo "enter your folder name where you want to install your tailwind  project:" ;
 read foldername;

 echo "yourfolder name is ,$foldername";

 mkdir "$foldername";

 cd "$foldername";
#  >> ********************* <<
#  >> folder creation finished <<
#  >> ************************ <<



#  //------------------//
#  code install 
#  //------------------//

sudo apt install code;



#  >> ********************* <<
#  >> code install  finished <<
#  >> ************************ <<

#  //------------------//
#  npm installs 
#  //------------------//
npm init -y;
npm install -D tailwindcss postcss autoprefixer vite ;

#  >> ********************* <<
#  >> npm finished <<
#  >> ************************ <<


#  //------------------//
#  making config files for tailwind and postcss 
#  //------------------//

echo 'module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  }
}' > postcss.config.js;

echo ' module.exports = {
  content: ["*"],
  theme: {
    extend: {},
  },
  plugins: [],
} ' > tailwind.config.js;


#  >> ********************* <<
#  >> config file creation finished <<
#  >> ************************ <<



#  //------------------//
#  creating html file
#  //------------------//


echo '<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="style.css" rel="stylesheet">
</head>
<body>
  <h1 class="text-3xl font-bold underline">
    Hello world!
    <div class="text-cyan-600">Tailwind is working if the text color in cyan</div>
    
  </h1>
</body>
</html>>'>index.html;



#  >> ********************* <<
#  >> html creation finished <<
#  >> ************************ <<


#  //------------------//
#  adding css input for tailwind
#  //------------------//
echo "@tailwind base;
@tailwind components;
@tailwind utilities; " >style.css


#  >> ********************* <<
#  >> css input  creation finished <<
#  >> ************************ <<

rm package.json;  
# removing the generated package.json file becuase editing it with bash looks harder for me


#  //------------------//
#  editing the package.jsong file for tailwind
#  //------------------//

echo '{
  "name": "tailwindfinal",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "start": "vite"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "autoprefixer": "^10.4.4",
    "postcss": "^8.4.12",
    "tailwindcss": "^3.0.23",
    "vite": "^2.8.6"
  }
}
' > package.json;


#  >> ********************* <<
#  >> package.json editin finished <<
#  >> ************************ <<



#  //------------------//
#  operning code 
#  //------------------//
code .




