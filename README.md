# 🦀 My Rust Journey Begins — RUST 101

> *"C makes it easy to shoot yourself in the foot; C++ makes it harder, but when you do it blows away your whole leg."* — Bjarne Stroustrup
>
> **Rust makes it impossible to shoot yourself in the foot — the gun won't even compile.** 🔫🚫

[![Rust](https://img.shields.io/badge/Rust-1.98.1-orange?logo=rust&logoColor=white)](https://www.rust-lang.org/)
[![Most Loved](https://img.shields.io/badge/StackOverflow-Most_Loved_9_years_running-ff69b4)](https://stackoverflow.com/)
[![Memory Safe](https://img.shields.io/badge/Memory_Safe-No_GC-green)](https://www.rust-lang.org/)
[![License](https://img.shields.io/badge/License-MIT-blue)](./LICENSE)

| 🌐 Live Demo | 💻 Source Code | 👋 Hello Demo |
| :--- | :--- | :--- |
| [rust-101 on GitHub Pages](https://vallimuthuraja-git.github.io/rust-101/) | [github.com/vallimuthuraja-git/rust-101](https://github.com/vallimuthuraja-git/rust-101) | [`hello.html`](./hello.html) · [live](https://vallimuthuraja-git.github.io/rust-101/hello.html) |

---

## 📖 Table of Contents

- [00 — Hello, My Journey](#hello)
- [01 — History of Rust](#history)
- [02 — Why Do We Even Need Rust?](#why-rust)
- [03 — Rust in the Current Market](#market)
- [04 — Why Giants Bet on Rust](#giants)
- [05 — What You CAN and CANNOT Do](#can-cannot)
- [06 — What You CAN and CANNOT Build](#can-build)
- [07 — Language Comparison](#comparison)
- [08 — RUST 101 Crash Course](#crash-course)
- [09 — Install Rust (Official + CLI)](#install)
- [10 — Live Changelog](#changelog)
- [11 — Sponsors](#sponsors)
- [12 — Big Uses in Production](#big-uses)
- [13 — Contributors](#contributors)
- [14 — Run This Project](#run)
- [15 — Where To Go Next](#next)
- [License](#license)

---

## <a id="hello"></a>👋 00 — Hello, My Journey

```rust
fn main() {
    println!("Hello, World!");
}
```

That is the entire first program in this repo (`hello.rs` / `src/main.rs`).
Three lines. Zero garbage collector. One binary at **C++ speed**.

| The Old Deal | The Rust Deal |
| :--- | :--- |
| 🐢 Safe but slow (Python, Java, Go) | ⚡ Safe **and** blazing fast |
| ⚡ Fast but dangerous (C, C++) | 🛡️ Fast **and** memory-safe by default |
| 😰 Threads, segfaults, CVEs at 3 AM | 😎 `cargo run` — if it compiles, it works |

> **If you read nothing else:** ~70% of serious bugs at Microsoft, Google, and
> Apple for 20 years were **memory-safety bugs**. Rust kills that class at
> compile time with no runtime cost. 👇

**Try it live:** [Hello World page](https://vallimuthuraja-git.github.io/rust-101/hello.html).

---

## <a id="history"></a>📜 01 — History of Rust

| Year | What Happened |
| :--- | :--- |
| **2006** | Graydon Hoare starts Rust as a side project fixing Firefox crashes. |
| **2009** | Mozilla adopts and sponsors Rust. OCaml prototype, then self-hosted. |
| **2010-2014** | Ownership, borrowing, lifetimes invented. Syntax overhauled. |
| **May 15, 2015** | Rust 1.0 released. Stability promise + editions. |
| **2015-2019** | Servo proves parallel rendering. cargo, crates.io, rustup mature. Most Loved streak begins. |
| **2021** | AWS, Google, Microsoft, Huawei, Mozilla found the Rust Foundation. |
| **2022** | Rust enters Linux kernel 6.1, Windows kernel, Android AOSP. |
| **2024-2026** | White House ONCD urges memory-safe languages. EU CRA. Ferrocene qualified for cars. `rustc 1.98.1` today. |

### The Big Invention: Ownership + Borrow Checker

- Manual memory (C/C++) = fast but every malloc/free can bite.
- GC (Java/Go/Python) = safer but pauses and overhead.
- Rust = compiler tracks ownership and borrows, rejects bad programs before they run. No GC. No segfaults.

---

## <a id="why-rust"></a>🤔 02 — Why Do We Even Need Rust?

### 1. Memory bugs are the most expensive bug class

- ~70% of CVEs at Microsoft/Chrome/Apple/Linux are memory safety.
- Rust turns use-after-free, buffer overflow, data races into compile errors.

### 2. Fearless concurrency

- C/C++ threads = undefined behavior on one mistake. Rust `Send + Sync` = data-race-free if it compiles. Discord killed GC pauses moving Go to Rust.

### 3. C-speed without footguns

- Python 20-100x slower. Go/Java pause. Rust = C speed, no GC.

### 4. Tooling by default

- `cargo build / test / fmt / clippy / doc / publish` + crates.io + rustup + errors that teach.

> **TL;DR:** fast OR safe is a false choice now.

---

## <a id="market"></a>📈 03 — Rust in the Current Market (2024-2026)

- Most Loved 9 years (Stack Overflow 2016-2024), Most Admired 2024-25.
- Top-10 GitHub by PRs. 150k+ crates, 50B+ downloads.
- Top-3 pay (US ~$170-200k). Demand 3-5x supply.
- White House + NSA + EU push memory-safe. Rust = cheapest compliance.
- Linux, Windows, Android ship Rust in kernel.
- Ruff, uv, Pingora, Zed, Polars, Deno — all Rust.

---

## <a id="giants"></a>🚀 04 — Why Giants Bet on Rust

| Company | Where Rust Shows Up | Why Rust |
| :--- | :--- | :--- |
| SpaceX | Starlink networking, ground systems | No GC pauses, tokio handles millions of conns |
| Tesla | Firmware, Autopilot infra | Ferrocene = ISO 26262 Rust for cars |
| X / xAI | Backend hot paths, inference | 2-10x latency cut, no GIL |
| Microsoft | Windows kernel, Azure, VS Code | Eradicates entire CVE classes |
| Google | Android 1.5M+ lines, Fuchsia, Chromium | Zero vulns in new Rust code |
| AWS | Firecracker, Bottlerocket, S3 paths | Lambda microVMs run on Rust |
| Cloudflare / Discord | Pingora 100M rps, Read States | 30% less CPU, p99 down 10x |

---


## <a id="can-cannot"></a>✅❌ 05 — What You CAN and CANNOT Do

### What you CAN do

- Memory-safe systems code with no GC: kernels, drivers, firmware.
- Fearless concurrency: `std::thread`, `tokio`, `rayon`.
- Zero-cost abstractions: iterators, traits, generics at C speed.
- WASM in browser + Node via `wasm-pack`.
- C/C++ interop both ways: `extern C`, `bindgen`, `cxx`.
- Reproducible builds: `cargo` + `crates.io`.
- Crypto, parsers, compilers where bugs cost money.

### Honest limits

- Borrow checker learning curve is real (2–4 weeks).
- Big projects compile slowly (`sccache`, `mold` help).
- No Java-style inheritance — composition + traits instead.
- Smaller hiring pool, elite retention.
- AAA games still C++; mobile CRUD faster in Swift/Kotlin; notebooks faster in Python.

> Rule: bug could kill, cost millions, or page you at 3 AM → Rust.

---

## <a id="can-build"></a>🏗️ 06 — What You CAN and CANNOT Build

CAN build: Linux drivers, Windows kernel parts, Redox OS, Servo, Cloudflare Pingora, AWS Firecracker, SurrealDB, TiKV, Polars, Solana, ripgrep, Ruff, uv, Deno, Zed, Tauri, Ferrocene automotive, tokenizers, axum APIs, Yew/Leptos WASM, Bevy games.

BETTER ELSEWHERE: AAA Unreal games (C++), iOS-only UI (Swift), SAP CRUD (Java/C#), quick notebooks (Python).

---

## <a id="comparison"></a>📊 07 — Language Comparison

| Language | Speed | Why |
| :--- | :--- | :--- |
| C | 100 | Bare metal baseline |
| Rust | ~99 | Same LLVM, zero-cost abstractions, no GC |
| C++ | ~99 | Same as Rust when expertly written |
| Go | ~75 | GC + simpler optimizer |
| Java | ~65 | Great JIT, GC pauses hurt p99 |
| C# | ~62 | Like Java |
| JS/Node | ~50 | V8 magic, dynamic types cap it |
| Python | ~5–10 | Interpreted + GIL, 20–100x slower |

### RAM for typical microservice (lower = leaner)

| Language | MB | Note |
| :--- | :--- | :--- |
| C | ~4 | Nothing but your code |
| Rust | ~5 | 5 MB static binary, no runtime |
| C++ | ~6 | Same, plus stdlib |
| Go | ~25 | Runtime + GC |
| Python | ~45 | Interpreter |
| Node | ~70 | V8 |
| C# | ~150 | Runtime + JIT |
| Java | ~180 | JVM heap warmup |

### Energy (lower = greener)

C / Rust / C++ = 1.0x. Go ~1.5x. Java/C# ~1.8–2x. JS ~2.5x. Python ~50–75x.

### Memory safety (/10)

Rust 10. Python/JS/Java/C#/Go 8–9 (GC safe, runtime races). Modern C++ 4. C 2.

### Vuln density (CVEs per 100k LOC, lower = better)

Rust (safe) ~0.5. Go/Java/C#/Python/JS ~2–4. C++ ~8–12. C ~10–15.

### Concurrency (/10)

Rust 10 (data-race-free at compile time). Go 8. Java/C# 7. JS 6. Python 4. C/C++ 3.

---

## <a id="crash-course"></a>🦀 08 — RUST 101 Crash Course

```rust
fn main() {
    println!("Hello, World!"); // ! = macro
}
```

| Concept | 30-sec version | Example |
| :--- | :--- | :--- |
| Variables | Immutable by default, `mut` to opt in | `let x = 5; let mut y = 6;` |
| Ownership | ONE owner; moved not copied | `let s2 = s1; // s1 dead` |
| Borrowing | `&` read, `&mut` write (only ONE `&mut`) | `fn len(s: &String) -> usize` |

## <a id="install"></a>⬇️ 09 — Install Rust (Official Links + CLI for Every Platform)

> Official source: [rust-lang.org/tools/install](https://www.rust-lang.org/tools/install).
> `rustup` is the recommended manager on every platform. Verify with `rustc --version && cargo --version`.

| Platform | Recommended Method | Command / Link |
| :--- | :--- | :--- |
| Linux / macOS / Unix / WSL | `rustup` via shell | `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \| sh` |
| Windows (MSVC) | `rustup-init.exe` | [x64](https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe) · [ARM64](https://static.rust-lang.org/rustup/dist/aarch64-pc-windows-msvc/rustup-init.exe) · [32-bit](https://static.rust-lang.org/rustup/dist/i686-pc-windows-msvc/rustup-init.exe) |
| Windows | `winget` | `winget install --id Rustlang.Rustup` |
| Windows | `chocolatey` | `choco install rustup.install` |
| Windows / Linux / macOS | `scoop` (Win) / `brew` (Mac) | `scoop install rustup` · `brew install rustup` |
| Any (offline) | Standalone `tar.xz` / `.msi` / `.pkg` | [Other installation methods](https://forge.rust-lang.org/infra/other-installation-methods.html) · [Archive](https://static.rust-lang.org/dist/) |
| Docker | Official image | `docker pull rust:1.98.1` · `docker run --rm rust:1.98.1 rustc --version` |

### After install (all platforms)

```bash
rustc --version && cargo --version && rustup --version
rustup update
rustup default stable
rustup target add wasm32-unknown-unknown
rustup component add clippy rustfmt rust-docs
cargo new hello && cd hello && cargo run
```

### Uninstall

```bash
rustup self uninstall
```

> Windows note: install the MSVC C++ build tools when prompted. WSL users: use the Linux `curl` command above.

### Live check on this site

The website version of this guide includes a **copy button for every platform** plus a **live Rust version badge** in [⬇️ Install section](https://vallimuthuraja-git.github.io/rust-101/#install).

## <a id="changelog"></a>🧾 10 — Live Changelog (Rust Releases)

> Live source: [github.com/rust-lang/rust/releases](https://github.com/rust-lang/rust/releases).
> RSS/API: `https://github.com/rust-lang/rust/releases.atom` · `https://api.github.com/repos/rust-lang/rust/releases`.

| Release | Date | Highlights | Notes |
| :--- | :--- | :--- | :--- |
| [1.98.1](https://github.com/rust-lang/rust/releases/tag/1.98.1) | Sep 2026 | vtable miscompilation fix | Latest patch used by this repo |
| [1.98.0](https://github.com/rust-lang/rust/releases/tag/1.98.0) | Aug 2026 | Stable language + Cargo + Clippy updates | See release notes |
| [1.97.1](https://github.com/rust-lang/rust/releases/tag/1.97.1) | 2026 | Patch fixes | See release notes |
| [1.97.0](https://github.com/rust-lang/rust/releases/tag/1.97.0) | 2026 | New stable features | See release notes |
| [1.96.x](https://github.com/rust-lang/rust/releases/tag/1.96.0) | 2026 | Compiler + std improvements | See release notes |

**The website shows this live:** the [Changelog section](https://vallimuthuraja-git.github.io/rust-101/#changelog) fetches the GitHub Releases API at page load — no rebuild needed.

```bash
curl -s https://api.github.com/repos/rust-lang/rust/releases?per_page=5 \
  | grep -E '"tag_name"|"published_at"|"html_url"'
```

---


---

| Result/Option | Errors as values, `?` propagates | `File::open("x")?` |
| Traits | Like interfaces, for ANY type | `trait Speak { fn speak(&self); }` |

## <a id="sponsors"></a>💖 11 — Sponsors (Rust Foundation Members)

> Source: [foundation.rust-lang.org/members](https://foundation.rust-lang.org/members/).
> Click a logo/name to visit the official company site.

### Platinum

| Sponsor | Site |
| :--- | :--- |
| <img src="https://cdn.simpleicons.org/arm" width="20" height="20" alt="Arm" /> Arm | [arm.com](https://www.arm.com/) |
| <img src="https://cdn.simpleicons.org/amazonaws" width="20" height="20" alt="AWS" /> AWS | [aws.amazon.com](https://aws.amazon.com/) |
| <img src="https://cdn.simpleicons.org/google" width="20" height="20" alt="Google" /> Google | [google.com](https://www.google.com/) |
| <img src="https://cdn.simpleicons.org/microsoft" width="20" height="20" alt="Microsoft" /> Microsoft | [microsoft.com](https://www.microsoft.com/) |
| <img src="https://cdn.simpleicons.org/huawei" width="20" height="20" alt="Huawei" /> Huawei | [huawei.com](https://www.huawei.com/) |
| <img src="https://cdn.simpleicons.org/mozilla" width="20" height="20" alt="Mozilla" /> Mozilla | [mozilla.org](https://www.mozilla.org/) |

### Gold

| Sponsor | Site |
| :--- | :--- |
| <img src="https://cdn.simpleicons.org/meta" width="20" height="20" alt="Meta" /> Meta | [meta.com](https://www.meta.com/) |
| <img src="https://cdn.simpleicons.org/tesla" width="20" height="20" alt="Tesla" /> Tesla / SpaceX ecosystem | [tesla.com](https://www.tesla.com/) |
| <img src="https://cdn.simpleicons.org/cloudflare" width="20" height="20" alt="Cloudflare" /> Cloudflare | [cloudflare.com](https://www.cloudflare.com/) |
| <img src="https://cdn.simpleicons.org/discord" width="20" height="20" alt="Discord" /> Discord | [discord.com](https://discord.com/) |
| <img src="https://cdn.simpleicons.org/dropbox" width="20" height="20" alt="Dropbox" /> Dropbox | [dropbox.com](https://www.dropbox.com/) |

### Silver / Associate (selected)

1Password · Arm · Astral · Dropbox · Ferrous Systems · Sentry · Zed Industries · Tor Project · Codethink · Starling Bank — see the full live list on the website, which mirrors the [official members page](https://foundation.rust-lang.org/members/).

---

## <a id="big-uses"></a>🏭 12 — Big Uses in Production

| Company / Project | Logo | What runs on Rust |
| :--- | :--- | :--- |
| <img src="https://cdn.simpleicons.org/linux" width="20" height="20" alt="Linux" /> Linux kernel | [kernel.org](https://www.kernel.org/) | Rust drivers (Binder, GPU) since 6.1 |
| <img src="https://cdn.simpleicons.org/android" width="20" height="20" alt="Android" /> Android | [source.android.com](https://source.android.com/) | 1.5M+ lines: Bluetooth, UWB, Keystore |
| <img src="https://cdn.simpleicons.org/googlechrome" width="20" height="20" alt="Chromium" /> Chromium / Firefox | [chromium.org](https://www.chromium.org/) | Stylo, URL parser, sandbox parts |
| <img src="https://cdn.simpleicons.org/cloudflare" width="20" height="20" alt="Cloudflare" /> Cloudflare Pingora | [cloudflare.com](https://www.cloudflare.com/) | 100M+ rps proxy, replaced NGINX |
| <img src="https://cdn.simpleicons.org/discord" width="20" height="20" alt="Discord" /> Discord | [discord.com](https://discord.com/) | Read States: p99 down 10x, no GC pauses |
| <img src="https://cdn.simpleicons.org/amazonaws" width="20" height="20" alt="AWS" /> AWS Firecracker | [aws.amazon.com](https://aws.amazon.com/) | Lambda/Fargate microVMs |
| <img src="https://cdn.simpleicons.org/dropbox" width="20" height="20" alt="Dropbox" /> Dropbox | [dropbox.com](https://www.dropbox.com/) | Storage sync engine rewrite |
| <img src="https://cdn.simpleicons.org/meta" width="20" height="20" alt="Meta" /> Meta | [meta.com](https://www.meta.com/) | Buck2 build system, backend paths |
| <img src="https://cdn.simpleicons.org/tesla" width="20" height="20" alt="Tesla" /> Tesla / SpaceX | [tesla.com](https://www.tesla.com/) | Firmware, Starlink networking, tooling |
| <img src="https://cdn.simpleicons.org/nasa" width="20" height="20" alt="NASA" /> NASA / ESA research | [nasa.gov](https://www.nasa.gov/) | Simulations, ground tooling, robotics |

> Full user list: [rust-lang.org/production](https://www.rust-lang.org/production) (archived) · [Foundation members](https://foundation.rust-lang.org/members/).

---

## <a id="contributors"></a>🤝 13 — Contributors

Thanks to everyone in the Rust community — and to the contributors of this repo:

<a href="https://github.com/vallimuthuraja-git/rust-101/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=vallimuthuraja-git/rust-101" alt="Contributors" />
</a>

- Language creator: Graydon Hoare + the Rust team ([rust-lang.org/governance](https://www.rust-lang.org/governance)).
- This repo: [contributors graph](https://github.com/vallimuthuraja-git/rust-101/graphs/contributors).
- Want your face here? Fix a typo, add an example, star the repo, open a PR.

---




## <a id="run"></a>▶️ 14 — Run This Project

```bash
git clone https://github.com/vallimuthuraja-git/rust-101.git
cd rust-101
cargo run
```

View site locally: `python3 -m http.server 8000`, open `http://localhost:8000/index.html`.

---

## <a id="next"></a>🗺️ 15 — Where To Go Next

Week 1: Rust Book ch 1–6 + rustlings. Week 2: ownership gym. Week 3: tiny CLI with `clap`. Week 4: `rayon` + `tokio`/`axum`. Month 2: `wasm-pack`. Month 3: contribute to `bevy`/`nushell`.

Links: [The Rust Book](https://doc.rust-lang.org/book/) · [Rust by Example](https://doc.rust-lang.org/rust-by-example/) · [Rustlings](https://github.com/rust-lang/rustlings) · [crates.io](https://crates.io/) · [Live site](https://vallimuthuraja-git.github.io/rust-101/).

---

## <a id="license"></a>📄 License

MIT — steal this README, make your own journey. If it opened your eyes, star the repo and share with one C++ friend who says "Rust is hype."
