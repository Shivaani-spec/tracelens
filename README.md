# TraceLens

TraceLens is a small incident-analysis demo for **PS 01: The Invisible Failure Problem**. It follows an incident across service dependencies and lays out the evidence behind a likely cause.

## Try it

Open `index.html` in a browser, or run `Start-TraceLens.ps1` from PowerShell to serve it at `http://127.0.0.1:4173`.

The scenario menu has three cases: database pool exhaustion, a bad deployment configuration, and an external provider slowdown. The timeline includes missing and late events. “How we know” explains the ranking, and “Export incident” downloads a report.

## How it works

The page is plain HTML, CSS, and JavaScript, with no packages or build step. The demo ranks causes using event order, service dependencies, related metric changes, and healthy control services.

All incident data is synthetic. The ranking is a demo heuristic; it is not connected to monitoring systems and should not be used to make production changes.

## Live demo

https://tracelens-blue.vercel.app/
