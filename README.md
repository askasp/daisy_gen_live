# DaisyGenLive

Daisy gen live is a scaffold generator for phoenix liveview that uses daisy/tailwind. `{:daisy_gen_live, "~>0.1.0"}` and run `mix deps.get` Run the generator as you would phx.gen.live. e.g

```
	phx.gen.daisy Accounts User users age:integer name:string
```


## Setting up Tailwind and Daisy
```
cd assets && npm install tailwindcss postcss postcss-loader autoprefixer

```
create assets/postcss.config.js and add

```javascript
// postcss.config.js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  }
}

```

Add postscss to `assets/webpack.config.js

```javascript
// webpack.config.js
...
{
  test: /\.[s]?css$/,
  use: [
    MiniCssExtractPlugin.loader,
    'css-loader',
    'postcss-loader',
    'sass-loader'
  ],
}
...

```

Create config file `cd assets && npx tailwindcss init` and fill inn 

```javascript
// tailwind.config.js
module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

```


Edit your app.scss file, by adding this on the top

```
@tailwind base;
@tailwind components;
@tailwind utilities;
@tailwind screens;

.mydaisyform input{
    @apply input input-primary
}
.mydaisyform label{
    @apply label-text
}
.myerrortag label{
    @apply label-text-alt
}

.mydaisyform textarea{
    @apply textarea h-24 textarea-bordered textarea-primary
}



```

Also remove all .alerts except .alerts:empty



