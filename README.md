<p>
  <img src="assets/splash/pokeball.svg" width="64" height="64">
</p>

# Pocket Ville

> Versión en español [aquí](README.es.md)

The practical encyclopedia for trainers, at your fingertips. Dive in the horizons of the Pokémon universe and save all your favorite battle pals.

<p align="center">
  <img src="Pocket Ville Screenshot.png">
</p>

# About Pocket Ville

This a conceptual project of a Pokedex-like mobile app made for a technical test. Built entirely with Flutter + Riverpod.

# PocketVille in Detail

This project has been incredibly beneficial for my personal growth, allowing me to learn a lot of new things. Even more importantly, it's forced me to break out of the "mold" I had adapted to in my previous job, where I had acquired many habits. These habits aren't necessarily bad, but they clearly aren't suitable for every type of project.

## As Standard as Possible

One of my goals when starting this project was to avoid relying on as many external packages as possible and instead focus more on standard practices to leverage Flutter to its fullest potential. This approach is best reflected in my decision not to use GoRouter for branch navigation. This decision wasn't just based on my approach, but also on experience.

Personally, I'm not a big fan of GoRouter, and frankly, I think it creates more complex problems than it solves. In my previous role, it was quite common for both me and my colleagues to encounter problems related to GoRouter, and due to the project's complexity, we were never able to get the most out of it.

## Controlled Concurrency

As soon as I started integrating the app with the Pokéapi, I realized that using parallelism would be essential. Dart's approach to parallelism is quite strict, and because of this, it has always been a complicated topic for me, but here I've finally been able to tame the use of Isolates in Flutter applications.

PocketVille uses a utility class (`BackgroundWorker`) that is responsible for keeping an Isolate alive during the application's execution. In conjunction with Riverpod, `BackgroundWorker` can be used similarly to `compute`, with the difference that `BackgroundWorker` will keep the same Isolate alive until the app closes instead of creating new Isolates for each new task that runs (as happens with `compute`).

## Responsiveness with GraphQL

I must admit that this is my first time working with Pokeapi, and I honestly find it a fascinating tool. It's an extremely complete and well-organized API, excellent for this type of mock project. However, I also think that the information is quite fragmented, resulting in the need to make multiple requests to different endpoints, which takes time and ruins the user experience by making them wait for a long time.

With that in mind, I honestly preferred to prioritize the app's responsiveness and user experience by using the experimental GraphQL API provided by Pokeapi. This considerably improved the experience and loading times, but clearly, in a real project, these kinds of decisions require better planning beforehand to minimize problems/regrets in the long run.