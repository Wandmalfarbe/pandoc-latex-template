---
title: "GitHub Alerts"
author: [Pascal Wagler]
date: "2026-01-25"
subject: "Markdown"
keywords: [Markdown, Example, GitHub, Alert, Admonition]
lang: "en"
colorlinks: true
...

# GitHub Alerts

[GitHub-style Markdown alerts] are supported with the [pandoc extension `alerts`](https://pandoc.org/MANUAL.html#extension-alerts).
Please note that the resulting alerts are unstyled.

To create alerts that look similar to GitHub’s, you can use the included Lua filter `alerts.lua`. Simply pass it to your pandoc command with `--lua-filter="alerts.lua"`. The necessary LaTeX packages and commands will be automatically included in your document.

## Simple Alerts

The alerts in this section contain only plain text content.

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

## Markdown Inside Alerts

The following alerts use Markdown formatting within their content.

> [!NOTE]
> Lorem ipsum **dolor** sit amet, `consectetur adipiscing` elit.
> 
> ```
> if(args.length < 2) {
> 	System.out.println("Lorem ipsum dolor sit amet");
> }
> ```

> [!TIP]
> Lorem ipsum **dolor** sit amet, `consectetur adipiscing` elit.
> 
> ```
> if(args.length < 2) {
> 	System.out.println("Lorem ipsum dolor sit amet");
> }
> ```

> [!IMPORTANT]
> Lorem ipsum **dolor** sit amet, `consectetur adipiscing` elit.
> 
> ```
> if(args.length < 2) {
> 	System.out.println("Lorem ipsum dolor sit amet");
> }
> ```

> [!WARNING]
> Lorem ipsum **dolor** sit amet, `consectetur adipiscing` elit.
> 
> ```
> if(args.length < 2) {
> 	System.out.println("Lorem ipsum dolor sit amet");
> }
> ```

> [!CAUTION]
> Lorem ipsum **dolor** sit amet, `consectetur adipiscing` elit.
> 
> ```
> if(args.length < 2) {
> 	System.out.println("Lorem ipsum dolor sit amet");
> }
> ```

## Translation and Customizaion

The alert titles (e.g., *Note*, *Tip*, or *Caution*) are currently hardcoded in
the Lua filter `alerts.lua` and can only be changed there. 
Customizations to the alert style or colors are also only possible by modifying
the provided Lua filter.

[GitHub-style Markdown alerts]: https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts
