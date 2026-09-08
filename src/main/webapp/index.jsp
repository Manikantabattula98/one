<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Premium Online Store</title>

    <meta name="description"
          content="NexusShop - Premium electronics, fashion, gadgets and accessories.">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <style>

        /* =========================================================
           GLOBAL VARIABLES
        ========================================================= */

        :root {
            --primary: #1677ff;
            --primary-dark: #0057d9;
            --primary-light: #4da3ff;
            --cyan: #00c8ff;

            --black: #020617;
            --dark: #070b14;
            --dark-2: #0b1220;
            --dark-3: #111827;
            --card: #0d1524;
            --card-hover: #111c30;

            --white: #ffffff;
            --text: #f8fafc;
            --muted: #94a3b8;
            --muted-2: #64748b;

            --border: rgba(148, 163, 184, .15);
            --border-blue: rgba(22, 119, 255, .35);

            --success: #22c55e;
            --warning: #f59e0b;
            --danger: #ef4444;

            --shadow:
                0 20px 60px rgba(0, 0, 0, .45);

            --blue-glow:
                0 0 30px rgba(22, 119, 255, .18);

            --radius: 18px;
        }


        /* =========================================================
           RESET
        ========================================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background:
                radial-gradient(
                    circle at 50% -20%,
                    rgba(22,119,255,.12),
                    transparent 35%
                ),
                var(--black);

            color: var(--text);
            line-height: 1.6;
            min-height: 100vh;
        }

        body.modal-open {
            overflow: hidden;
        }

        img {
            width: 100%;
            display: block;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        ul {
            list-style: none;
        }


        /* =========================================================
           CONTAINER
        ========================================================= */

        .container {
            width: min(1200px, calc(100% - 40px));
            margin: auto;
        }

        .section {
            padding: 90px 0;
        }


        /* =========================================================
           COMMON
        ========================================================= */

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 20px;
            margin-bottom: 38px;
        }

        .section-title {
            font-size: 34px;
            line-height: 1.15;
            font-weight: 900;
            letter-spacing: -1.5px;
        }

        .section-subtitle {
            color: var(--muted);
            margin-top: 8px;
            font-size: 14px;
        }

        .btn {
            border: none;
            border-radius: 11px;
            padding: 13px 20px;
            font-weight: 800;
            transition: .25s ease;
        }

        .btn-primary {
            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    #075de5
                );

            color: white;

            box-shadow:
                0 8px 25px rgba(22,119,255,.25);
        }

        .btn-primary:hover {
            transform: translateY(-2px);

            box-shadow:
                0 12px 35px rgba(22,119,255,.4);
        }

        .btn-outline {
            background: rgba(255,255,255,.03);
            border: 1px solid var(--border);
            color: var(--text);
        }

        .btn-outline:hover {
            border-color: var(--primary);
            color: var(--primary-light);
            background: rgba(22,119,255,.08);
        }


        /* =========================================================
           TOP BAR
        ========================================================= */

        .topbar {
            background: #00030a;
            border-bottom: 1px solid rgba(22,119,255,.15);
            color: var(--muted);
            font-size: 12px;
        }

        .topbar-inner {
            min-height: 36px;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 7px;
        }

        .topbar strong {
            color: var(--primary-light);
        }


        /* =========================================================
           HEADER
        ========================================================= */

        .header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background:
                rgba(2,6,23,.88);

            backdrop-filter: blur(18px);

            border-bottom:
                1px solid var(--border);
        }

        .header-inner {
            min-height: 78px;

            display: flex;
            align-items: center;

            gap: 30px;
        }

        .logo {
            font-size: 25px;
            font-weight: 900;
            letter-spacing: -1.2px;
            white-space: nowrap;
        }

        .logo span {
            color: var(--primary);
        }


        /* =========================================================
           NAVIGATION
        ========================================================= */

        .nav {
            display: flex;
            align-items: center;
            gap: 25px;
        }

        .nav a {
            color: #aab5c7;
            font-size: 13px;
            font-weight: 600;
            transition: .2s;
        }

        .nav a:hover {
            color: white;
        }


        /* =========================================================
           SEARCH
        ========================================================= */

        .search {
            margin-left: auto;
            width: min(340px, 30vw);
            position: relative;
        }

        .search input {
            width: 100%;
            height: 44px;

            background:
                rgba(255,255,255,.045);

            border:
                1px solid var(--border);

            color: white;

            border-radius: 11px;

            padding:
                0 50px 0 15px;

            outline: none;

            transition: .2s;
        }

        .search input::placeholder {
            color: #64748b;
        }

        .search input:focus {
            border-color: var(--primary);

            background:
                rgba(22,119,255,.06);

            box-shadow:
                0 0 0 3px rgba(22,119,255,.08);
        }

        .search button {
            position: absolute;

            right: 5px;
            top: 5px;

            width: 34px;
            height: 34px;

            border: none;
            border-radius: 8px;

            background: var(--primary);

            color: white;
        }


        /* =========================================================
           HEADER ACTIONS
        ========================================================= */

        .header-actions {
            display: flex;
            gap: 8px;
        }

        .icon-btn {
            width: 43px;
            height: 43px;

            border:
                1px solid var(--border);

            border-radius: 11px;

            background:
                rgba(255,255,255,.035);

            color: white;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 18px;

            transition: .2s;
        }

        .icon-btn:hover {
            border-color: var(--primary);

            background:
                rgba(22,119,255,.1);

            color: var(--primary-light);
        }

        .action-wrap {
            position: relative;
        }

        .badge-count {
            position: absolute;

            top: -6px;
            right: -5px;

            min-width: 18px;
            height: 18px;

            padding: 0 5px;

            background: var(--primary);

            border:
                2px solid var(--black);

            color: white;

            font-size: 9px;

            border-radius: 20px;

            display: flex;
            justify-content: center;
            align-items: center;

            font-weight: 900;
        }

        .mobile-toggle {
            display: none;
        }


        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            padding: 65px 0 35px;
        }

        .hero-card {
            min-height: 510px;

            border:
                1px solid var(--border);

            border-radius: 28px;

            overflow: hidden;

            background:
                radial-gradient(
                    circle at 80% 35%,
                    rgba(22,119,255,.18),
                    transparent 35%
                ),
                radial-gradient(
                    circle at 100% 100%,
                    rgba(0,200,255,.08),
                    transparent 35%
                ),
                linear-gradient(
                    135deg,
                    #080e1c,
                    #030712
                );

            display: grid;

            grid-template-columns:
                1.05fr .95fr;

            align-items: center;

            padding: 65px;

            position: relative;

            box-shadow:
                inset 0 0 100px rgba(22,119,255,.04);
        }

        .hero-card::before {
            content: "";

            position: absolute;

            width: 400px;
            height: 400px;

            border-radius: 50%;

            border:
                1px solid rgba(22,119,255,.12);

            right: 80px;
            top: 50px;

            box-shadow:
                0 0 80px rgba(22,119,255,.08);
        }

        .hero-content {
            position: relative;
            z-index: 2;

            max-width: 620px;
        }

        .eyebrow {
            display: inline-flex;

            align-items: center;

            background:
                rgba(22,119,255,.1);

            border:
                1px solid rgba(22,119,255,.25);

            color:
                var(--primary-light);

            padding:
                7px 12px;

            border-radius:
                30px;

            font-size: 11px;

            font-weight: 800;

            margin-bottom: 20px;

            text-transform: uppercase;
            letter-spacing: .6px;
        }

        .hero h1 {
            font-size:
                clamp(43px, 5vw, 70px);

            line-height: 1.01;

            letter-spacing:
                -3.5px;

            margin-bottom: 22px;
        }

        .hero h1 span {
            display: block;

            color:
                var(--primary);

            text-shadow:
                0 0 30px rgba(22,119,255,.25);
        }

        .hero p {
            color:
                var(--muted);

            font-size: 16px;

            max-width: 530px;

            margin-bottom: 31px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }


        /* =========================================================
           HERO VISUAL
        ========================================================= */

        .hero-visual {
            display: flex;
            justify-content: center;
            align-items: center;

            position: relative;

            z-index: 2;
        }

        .hero-product {
            width: 330px;
            height: 330px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle at 35% 30%,
                    #263d64,
                    #0b1424 55%,
                    #030712
                );

            border:
                1px solid rgba(22,119,255,.3);

            box-shadow:
                0 0 80px rgba(22,119,255,.18),
                inset 0 0 60px rgba(22,119,255,.08);

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 145px;
        }

        .floating-card {
            position: absolute;

            background:
                rgba(10,17,30,.9);

            border:
                1px solid var(--border-blue);

            backdrop-filter: blur(12px);

            padding:
                12px 16px;

            border-radius:
                12px;

            box-shadow:
                var(--blue-glow);

            font-size: 11px;

            font-weight: 800;
        }

        .floating-one {
            top: 30px;
            right: 5px;
        }

        .floating-two {
            bottom: 25px;
            left: 10px;
        }


        /* =========================================================
           TRUST CARDS
        ========================================================= */

        .trust-grid {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 15px;

            margin-top: 25px;
        }

        .trust-card {
            background:
                linear-gradient(
                    145deg,
                    rgba(255,255,255,.045),
                    rgba(255,255,255,.015)
                );

            border:
                1px solid var(--border);

            border-radius:
                15px;

            padding: 19px;

            display: flex;
            gap: 13px;
            align-items: center;

            transition: .25s;
        }

        .trust-card:hover {
            border-color:
                rgba(22,119,255,.3);

            transform:
                translateY(-3px);

            box-shadow:
                var(--blue-glow);
        }

        .trust-icon {
            width: 44px;
            height: 44px;

            flex-shrink: 0;

            border-radius: 11px;

            background:
                rgba(22,119,255,.1);

            border:
                1px solid rgba(22,119,255,.2);

            display: grid;
            place-items: center;

            font-size: 20px;
        }

        .trust-card h4 {
            font-size: 13px;
        }

        .trust-card p {
            color: var(--muted);
            font-size: 11px;
        }


        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories-grid {
            display: grid;

            grid-template-columns:
                repeat(6, 1fr);

            gap: 15px;
        }

        .category-card {
            background:
                linear-gradient(
                    145deg,
                    #0d1728,
                    #080e1a
                );

            color: white;

            border:
                1px solid var(--border);

            border-radius:
                17px;

            padding:
                24px 13px;

            text-align:
                center;

            transition:
                .25s;
        }

        .category-card:hover {
            transform:
                translateY(-6px);

            border-color:
                rgba(22,119,255,.45);

            box-shadow:
                0 15px 40px rgba(0,0,0,.35),
                var(--blue-glow);
        }

        .category-icon {
            width: 64px;
            height: 64px;

            border-radius: 18px;

            background:
                linear-gradient(
                    145deg,
                    rgba(22,119,255,.18),
                    rgba(0,200,255,.04)
                );

            border:
                1px solid rgba(22,119,255,.18);

            display: grid;
            place-items: center;

            margin:
                0 auto 14px;

            font-size: 28px;
        }

        .category-card h3 {
            font-size: 13px;
        }


        /* =========================================================
           PRODUCTS
        ========================================================= */

        .product-toolbar {
            display: flex;

            justify-content:
                space-between;

            align-items:
                center;

            gap: 20px;

            margin-bottom:
                27px;
        }

        .filters {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .filter-btn {
            border:
                1px solid var(--border);

            background:
                rgba(255,255,255,.025);

            color:
                #9aa6b8;

            border-radius:
                30px;

            padding:
                8px 15px;

            font-size:
                11px;

            font-weight:
                700;

            transition:
                .2s;
        }

        .filter-btn:hover,
        .filter-btn.active {
            background:
                var(--primary);

            color:
                white;

            border-color:
                var(--primary);

            box-shadow:
                0 5px 20px rgba(22,119,255,.2);
        }

        .results-count {
            color:
                var(--muted-2);

            font-size:
                12px;

            white-space:
                nowrap;
        }


        /* =========================================================
           PRODUCT GRID
        ========================================================= */

        .products-grid {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 20px;
        }

        .product-card {
            background:
                linear-gradient(
                    145deg,
                    #0e1727,
                    #080e19
                );

            border:
                1px solid var(--border);

            border-radius:
                18px;

            overflow:
                hidden;

            position:
                relative;

            transition:
                .3s;
        }

        .product-card:hover {
            transform:
                translateY(-6px);

            border-color:
                rgba(22,119,255,.4);

            box-shadow:
                0 18px 45px rgba(0,0,0,.35),
                var(--blue-glow);
        }

        .product-image {
            height: 230px;

            background:
                radial-gradient(
                    circle at center,
                    #17263e,
                    #080e19 70%
                );

            display:
                flex;

            align-items:
                center;

            justify-content:
                center;

            font-size:
                78px;

            position:
                relative;
        }

        .product-image::after {
            content: "";

            position:
                absolute;

            inset:
                0;

            background:
                radial-gradient(
                    circle at center,
                    rgba(22,119,255,.07),
                    transparent 60%
                );

            pointer-events:
                none;
        }

        .product-badge {
            position:
                absolute;

            left:
                12px;

            top:
                12px;

            z-index:
                2;

            background:
                rgba(22,119,255,.14);

            border:
                1px solid rgba(22,119,255,.3);

            color:
                var(--primary-light);

            padding:
                5px 9px;

            border-radius:
                7px;

            font-size:
                9px;

            font-weight:
                900;

            text-transform:
                uppercase;
        }

        .wishlist-btn {
            position:
                absolute;

            right:
                12px;

            top:
                12px;

            z-index:
                2;

            width:
                36px;

            height:
                36px;

            border-radius:
                50%;

            border:
                1px solid var(--border);

            background:
                rgba(2,6,23,.75);

            color:
                #94a3b8;

            font-size:
                17px;
        }

        .wishlist-btn:hover {
            border-color:
                var(--primary);

            color:
                var(--primary-light);
        }

        .wishlist-btn.active {
            color:
                #22a3ff;

            border-color:
                rgba(22,119,255,.4);
        }

        .product-info {
            padding:
                18px;
        }

        .product-category {
            color:
                var(--primary-light);

            font-size:
                9px;

            text-transform:
                uppercase;

            font-weight:
                800;

            letter-spacing:
                .7px;
        }

        .product-title {
            font-size:
                14px;

            font-weight:
                700;

            margin:
                5px 0 8px;

            white-space:
                nowrap;

            overflow:
                hidden;

            text-overflow:
                ellipsis;
        }

        .rating {
            font-size:
                11px;

            margin-bottom:
                15px;
        }

        .rating span {
            color:
                var(--muted-2);

            margin-left:
                5px;
        }

        .product-bottom {
            display:
                flex;

            align-items:
                center;

            justify-content:
                space-between;

            gap:
                10px;
        }

        .price {
            font-size:
                17px;

            font-weight:
                900;
        }

        .add-btn {
            border:
                1px solid rgba(22,119,255,.25);

            background:
                rgba(22,119,255,.1);

            color:
                var(--primary-light);

            padding:
                8px 12px;

            border-radius:
                8px;

            font-size:
                11px;

            font-weight:
                800;

            transition:
                .2s;
        }

        .add-btn:hover {
            background:
                var(--primary);

            color:
                white;

            border-color:
                var(--primary);
        }


        /* =========================================================
           DEAL
        ========================================================= */

        .deal-section {
            padding:
                30px 0 90px;
        }

        .deal-card {
            background:
                radial-gradient(
                    circle at 80% 20%,
                    rgba(22,119,255,.2),
                    transparent 35%
                ),
                linear-gradient(
                    135deg,
                    #0d1728,
                    #050a13
                );

            border:
                1px solid rgba(22,119,255,.2);

            color:
                white;

            border-radius:
                24px;

            padding:
                45px;

            display:
                grid;

            grid-template-columns:
                1fr auto;

            align-items:
                center;

            gap:
                40px;

            overflow:
                hidden;

            position:
                relative;

            box-shadow:
                var(--shadow);
        }

        .deal-card::before {
            content: "";

            position:
                absolute;

            width:
                330px;

            height:
                330px;

            border-radius:
                50%;

            border:
                1px solid rgba(22,119,255,.15);

            right:
                -80px;

            top:
                -150px;
        }

        .deal-label {
            color:
                var(--primary-light);

            font-size:
                10px;

            font-weight:
                900;

            text-transform:
                uppercase;

            letter-spacing:
                1px;
        }

        .deal-card h2 {
            font-size:
                35px;

            margin:
                7px 0;
        }

        .deal-card p {
            color:
                var(--muted);

            max-width:
                570px;

            font-size:
                13px;
        }

        .timer {
            display:
                flex;

            gap:
                10px;

            margin-top:
                20px;
        }

        .timer-box {
            background:
                rgba(255,255,255,.045);

            border:
                1px solid var(--border);

            border-radius:
                10px;

            padding:
                9px 13px;

            min-width:
                60px;

            text-align:
                center;
        }

        .timer-box strong {
            display:
                block;

            font-size:
                18px;
        }

        .timer-box small {
            color:
                var(--muted-2);

            font-size:
                8px;

            text-transform:
                uppercase;
        }

        .deal-action {
            position:
                relative;

            z-index:
                2;
        }


        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonials {
            display:
                grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap:
                20px;
        }

        .testimonial {
            background:
                linear-gradient(
                    145deg,
                    #0e1727,
                    #080e19
                );

            border:
                1px solid var(--border);

            border-radius:
                18px;

            padding:
                25px;

            transition:
                .25s;
        }

        .testimonial:hover {
            border-color:
                rgba(22,119,255,.25);

            transform:
                translateY(-3px);
        }

        .testimonial-stars {
            color:
                #1fa3ff;

            font-size:
                12px;

            margin-bottom:
                15px;
        }

        .testimonial p {
            color:
                #a8b3c4;

            font-size:
                13px;

            margin-bottom:
                20px;
        }

        .customer {
            display:
                flex;

            align-items:
                center;

            gap:
                12px;
        }

        .avatar {
            width:
                42px;

            height:
                42px;

            border-radius:
                50%;

            background:
                rgba(22,119,255,.12);

            border:
                1px solid rgba(22,119,255,.25);

            display:
                grid;

            place-items:
                center;

            font-weight:
                800;

            color:
                var(--primary-light);

            font-size:
                12px;
        }

        .customer strong {
            display:
                block;

            font-size:
                12px;
        }

        .customer span {
            color:
                var(--muted-2);

            font-size:
                10px;
        }


        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            padding:
                0 0 90px;
        }

        .newsletter-card {
            background:
                radial-gradient(
                    circle at 50% 0%,
                    rgba(22,119,255,.16),
                    transparent 50%
                ),
                linear-gradient(
                    145deg,
                    #0d1728,
                    #060b14
                );

            border:
                1px solid rgba(22,119,255,.2);

            border-radius:
                24px;

            padding:
                55px 30px;

            text-align:
                center;
        }

        .newsletter-card h2 {
            font-size:
                31px;

            margin-bottom:
                8px;
        }

        .newsletter-card p {
            color:
                var(--muted);

            font-size:
                13px;

            margin-bottom:
                25px;
        }

        .newsletter-form {
            display:
                flex;

            max-width:
                520px;

            margin:
                auto;

            background:
                #070d18;

            padding:
                5px;

            border-radius:
                12px;

            border:
                1px solid var(--border);
        }

        .newsletter-form input {
            flex:
                1;

            border:
                none;

            outline:
                none;

            background:
                transparent;

            color:
                white;

            padding:
                0 15px;
        }

        .newsletter-form input::placeholder {
            color:
                #64748b;
        }

        .newsletter-message {
            font-size:
                11px;

            margin-top:
                12px;

            min-height:
                18px;

            color:
                var(--primary-light);
        }


        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            background:
                #01040a;

            color:
                white;

            padding:
                65px 0 25px;

            border-top:
                1px solid var(--border);
        }

        .footer-grid {
            display:
                grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap:
                50px;

            margin-bottom:
                50px;
        }

        .footer-logo {
            font-size:
                24px;

            font-weight:
                900;

            margin-bottom:
                15px;
        }

        .footer-logo span {
            color:
                var(--primary);
        }

        .footer-about {
            color:
                var(--muted);

            max-width:
                350px;

            font-size:
                12px;
        }

        .footer h4 {
            margin-bottom:
                16px;

            font-size:
                13px;
        }

        .footer li {
            margin-bottom:
                10px;
        }

        .footer li a {
            color:
                #64748b;

            font-size:
                12px;

            transition:
                .2s;
        }

        .footer li a:hover {
            color:
                var(--primary-light);
        }

        .footer-bottom {
            border-top:
                1px solid var(--border);

            padding-top:
                20px;

            color:
                #475569;

            font-size:
                10px;

            display:
                flex;

            justify-content:
                space-between;
        }


        /* =========================================================
           OVERLAY
        ========================================================= */

        .overlay {
            position:
                fixed;

            inset:
                0;

            background:
                rgba(0,0,0,.72);

            backdrop-filter:
                blur(3px);

            z-index:
                1998;

            opacity:
                0;

            visibility:
                hidden;

            transition:
                .3s;
        }

        .overlay.show {
            opacity:
                1;

            visibility:
                visible;
        }


        /* =========================================================
           CART DRAWER
        ========================================================= */

        .cart-drawer {
            position:
                fixed;

            right:
                -450px;

            top:
                0;

            width:
                min(430px, 100%);

            height:
                100vh;

            background:
                #070d18;

            border-left:
                1px solid var(--border);

            z-index:
                2000;

            transition:
                .35s ease;

            display:
                flex;

            flex-direction:
                column;

            box-shadow:
                -20px 0 60px rgba(0,0,0,.45);
        }

        .cart-drawer.open {
            right:
                0;
        }

        .cart-header {
            padding:
                21px;

            border-bottom:
                1px solid var(--border);

            display:
                flex;

            align-items:
                center;

            justify-content:
                space-between;
        }

        .cart-header h3 {
            font-size:
                17px;
        }

        .cart-items {
            flex:
                1;

            overflow-y:
                auto;

            padding:
                20px;
        }

        .empty-cart {
            height:
                100%;

            display:
                flex;

            flex-direction:
                column;

            align-items:
                center;

            justify-content:
                center;

            color:
                var(--muted);

            text-align:
                center;
        }

        .empty-cart-icon {
            font-size:
                50px;

            margin-bottom:
                15px;
        }

        .cart-item {
            display:
                grid;

            grid-template-columns:
                65px 1fr auto;

            gap:
                12px;

            padding:
                14px 0;

            border-bottom:
                1px solid var(--border);
        }

        .cart-item-image {
            width:
                65px;

            height:
                65px;

            background:
                #101b2d;

            border:
                1px solid var(--border);

            border-radius:
                11px;

            display:
                grid;

            place-items:
                center;

            font-size:
                28px;
        }

        .cart-item h4 {
            font-size:
                12px;

            margin-bottom:
                5px;
        }

        .cart-item-price {
            color:
                var(--primary-light);

            font-size:
                12px;

            font-weight:
                800;
        }

        .quantity {
            display:
                flex;

            align-items:
                center;

            gap:
                8px;

            margin-top:
                8px;
        }

        .quantity button {
            width:
                25px;

            height:
                25px;

            border:
                1px solid var(--border);

            background:
                rgba(255,255,255,.03);

            color:
                white;

            border-radius:
                6px;
        }

        .quantity button:hover {
            border-color:
                var(--primary);

            color:
                var(--primary-light);
        }

        .quantity span {
            font-size:
                11px;

            font-weight:
                800;
        }

        .remove-item {
            border:
                none;

            background:
                transparent;

            color:
                #f87171;

            font-size:
                10px;

            align-self:
                start;
        }

        .cart-footer {
            padding:
                20px;

            border-top:
                1px solid var(--border);
        }

        .subtotal {
            display:
                flex;

            justify-content:
                space-between;

            font-size:
                16px;

            font-weight:
                900;

            margin-bottom:
                15px;
        }

        .checkout-btn {
            width:
                100%;

            padding:
                14px;

            border:
                none;

            border-radius:
                11px;

            background:
                var(--primary);

            color:
                white;

            font-weight:
                800;

            box-shadow:
                0 8px 25px rgba(22,119,255,.2);
        }

        .checkout-btn:hover {
            background:
                var(--primary-dark);
        }


        /* =========================================================
           MODAL
        ========================================================= */

        .modal {
            position:
                fixed;

            inset:
                0;

            background:
                rgba(0,0,0,.75);

            backdrop-filter:
                blur(5px);

            z-index:
                3000;

            display:
                flex;

            justify-content:
                center;

            align-items:
                center;

            padding:
                20px;

            opacity:
                0;

            visibility:
                hidden;

            transition:
                .25s;
        }

        .modal.show {
            opacity:
                1;

            visibility:
                visible;
        }

        .modal-card {
            width:
                min(430px, 100%);

            background:
                linear-gradient(
                    145deg,
                    #0e182a,
                    #070d18
                );

            border:
                1px solid var(--border);

            border-radius:
                20px;

            padding:
                30px;

            position:
                relative;

            transform:
                translateY(15px);

            transition:
                .25s;

            box-shadow:
                var(--shadow);
        }

        .modal.show .modal-card {
            transform:
                translateY(0);
        }

        .modal-close {
            position:
                absolute;

            top:
                14px;

            right:
                14px;

            border:
                1px solid var(--border);

            background:
                rgba(255,255,255,.04);

            color:
                #94a3b8;

            width:
                34px;

            height:
                34px;

            border-radius:
                50%;
        }

        .modal-close:hover {
            color:
                white;

            border-color:
                var(--primary);
        }

        .modal-card h2 {
            margin-bottom:
                5px;
        }

        .modal-card > p {
            color:
                var(--muted);

            font-size:
                12px;

            margin-bottom:
                25px;
        }

        .form-group {
            margin-bottom:
                15px;
        }

        .form-group label {
            display:
                block;

            font-size:
                11px;

            font-weight:
                700;

            margin-bottom:
                7px;
        }

        .form-group input {
            width:
                100%;

            height:
                44px;

            border:
                1px solid var(--border);

            border-radius:
                9px;

            padding:
                0 13px;

            outline:
                none;

            background:
                rgba(255,255,255,.03);

            color:
                white;
        }

        .form-group input:focus {
            border-color:
                var(--primary);

            background:
                rgba(22,119,255,.05);
        }

        .login-btn {
            width:
                100%;

            margin-top:
                5px;
        }


        /* =========================================================
           TOAST
        ========================================================= */

        .toast-container {
            position:
                fixed;

            right:
                20px;

            bottom:
                20px;

            z-index:
                5000;

            display:
                flex;

            flex-direction:
                column;

            gap:
                10px;
        }

        .toast {
            background:
                #101b2d;

            border:
                1px solid rgba(22,119,255,.3);

            color:
                white;

            padding:
                12px 16px;

            border-radius:
                9px;

            box-shadow:
                var(--shadow);

            font-size:
                11px;

            animation:
                toastIn .3s ease;
        }

        @keyframes toastIn {

            from {
                opacity: 0;
                transform: translateY(10px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }

        }


        /* =========================================================
           MOBILE NAV
        ========================================================= */

        .mobile-nav {
            display:
                none;

            position:
                absolute;

            left:
                0;

            right:
                0;

            top:
                78px;

            background:
                #070d18;

            border-bottom:
                1px solid var(--border);

            padding:
                20px;

            box-shadow:
                0 20px 40px rgba(0,0,0,.4);
        }

        .mobile-nav a {
            display:
                block;

            padding:
                11px 0;

            color:
                #94a3b8;

            font-size:
                13px;

            border-bottom:
                1px solid var(--border);
        }

        .mobile-nav a:last-child {
            border-bottom:
                none;
        }

        .mobile-nav a:hover {
            color:
                var(--primary-light);
        }

        .mobile-nav.show {
            display:
                block;
        }


        /* =========================================================
           RESPONSIVE 1100
        ========================================================= */

        @media (max-width: 1100px) {

            .categories-grid {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .products-grid {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .trust-grid {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .nav {
                display:
                    none;
            }

            .mobile-toggle {
                display:
                    flex;
            }

            .search {
                width:
                    auto;

                flex:
                    1;
            }

        }


        /* =========================================================
           RESPONSIVE 760
        ========================================================= */

        @media (max-width: 760px) {

            .container {
                width:
                    min(100% - 28px, 1200px);
            }

            .section {
                padding:
                    60px 0;
            }

            .section-title {
                font-size:
                    28px;
            }

            .hero {
                padding-top:
                    25px;
            }

            .hero-card {
                grid-template-columns:
                    1fr;

                padding:
                    40px 25px;

                min-height:
                    auto;
            }

            .hero h1 {
                font-size:
                    44px;
            }

            .hero-visual {
                margin-top:
                    40px;
            }

            .hero-product {
                width:
                    230px;

                height:
                    230px;

                font-size:
                    100px;
            }

            .floating-one {
                right:
                    0;
            }

            .floating-two {
                left:
                    0;
            }

            .categories-grid,
            .products-grid {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .testimonials {
                grid-template-columns:
                    1fr;
            }

            .deal-card {
                grid-template-columns:
                    1fr;

                padding:
                    30px;
            }

            .footer-grid {
                grid-template-columns:
                    1fr 1fr;

                gap:
                    30px;
            }

            .footer-about {
                grid-column:
                    1 / -1;
            }

            .search {
                display:
                    none;
            }

            .section-header {
                align-items:
                    flex-start;

                flex-direction:
                    column;
            }

            .product-toolbar {
                align-items:
                    flex-start;

                flex-direction:
                    column;
            }

            .newsletter-card {
                padding:
                    40px 20px;
            }

        }


        /* =========================================================
           RESPONSIVE 430
        ========================================================= */

        @media (max-width: 430px) {

            .topbar {
                display:
                    none;
            }

            .logo {
                font-size:
                    21px;
            }

            .header-actions .account-btn {
                display:
                    none;
            }

            .categories-grid,
            .products-grid {
                grid-template-columns:
                    repeat(2, 1fr);

                gap:
                    10px;
            }

            .category-card {
                padding:
                    18px 8px;
            }

            .category-icon {
                width:
                    50px;

                height:
                    50px;

                font-size:
                    22px;
            }

            .product-image {
                height:
                    165px;

                font-size:
                    58px;
            }

            .product-info {
                padding:
                    13px;
            }

            .product-title {
                font-size:
                    12px;
            }

            .price {
                font-size:
                    14px;
            }

            .add-btn {
                padding:
                    7px 8px;
            }

            .deal-card h2 {
                font-size:
                    26px;
            }

            .timer-box {
                min-width:
                    50px;

                padding:
                    8px;
            }

            .footer-grid {
                grid-template-columns:
                    1fr;
            }

            .footer-bottom {
                flex-direction:
                    column;

                gap:
                    10px;
            }

            .newsletter-form {
                flex-direction:
                    column;

                gap:
                    8px;

                background:
                    transparent;

                border:
                    none;
            }

            .newsletter-form input {
                height:
                    45px;

                border-radius:
                    9px;

                border:
                    1px solid var(--border);

                background:
                    #070d18;
            }

        }

    </style>
</head>


<body>


<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="topbar">

    <div class="container topbar-inner">

        🚀 Free shipping on orders over
        <strong>$50</strong>

    </div>

</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header class="header">

    <div class="container header-inner">

        <a href="#home" class="logo">
            Nexus<span>Shop</span>
        </a>


        <nav class="nav">

            <a href="#home">
                Home
            </a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Products
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </nav>


        <div class="search">

            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
            >

            <button id="searchBtn">
                🔍
            </button>

        </div>


        <div class="header-actions">


            <button
                class="icon-btn account-btn"
                id="accountBtn"
                title="Account">

                👤

            </button>


            <div class="action-wrap">

                <button
                    class="icon-btn"
                    id="wishlistHeader"
                    title="Wishlist">

                    ♡

                </button>

                <span
                    class="badge-count"
                    id="wishlistCount">

                    0

                </span>

            </div>


            <div class="action-wrap">

                <button
                    class="icon-btn"
                    id="cartBtn"
                    title="Cart">

                    🛒

                </button>

                <span
                    class="badge-count"
                    id="cartCount">

                    0

                </span>

            </div>


            <button
                class="icon-btn mobile-toggle"
                id="mobileToggle">

                ☰

            </button>

        </div>


        <div
            class="mobile-nav"
            id="mobileNav">

            <a href="#home">
                Home
            </a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Products
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </div>

    </div>

</header>


<!-- =========================================================
     MAIN
========================================================= -->

<main id="home">


<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

    <div class="container">

        <div class="hero-card">


            <div class="hero-content">

                <div class="eyebrow">
                    ✦ New season collection
                </div>


                <h1>

                    Everything you need,

                    <span>
                        in one place.
                    </span>

                </h1>


                <p>

                    Discover premium electronics, fashion,
                    accessories and everyday essentials —
                    carefully selected for modern living.

                </p>


                <div class="hero-buttons">

                    <button
                        class="btn btn-primary"
                        onclick="scrollToProducts()">

                        Shop Now →

                    </button>


                    <button
                        class="btn btn-outline"
                        onclick="scrollToDeals()">

                        View Deals

                    </button>

                </div>

            </div>


            <div class="hero-visual">

                <div class="hero-product">

                    📱

                </div>


                <div class="floating-card floating-one">

                    ⭐ 4.9 Customer Rating

                </div>


                <div class="floating-card floating-two">

                    🔥 Up to 40% Off

                </div>

            </div>


        </div>

    </div>

</section>


<!-- =========================================================
     TRUST
========================================================= -->

<section>

    <div class="container">

        <div class="trust-grid">


            <div class="trust-card">

                <div class="trust-icon">
                    🚚
                </div>

                <div>

                    <h4>
                        Fast Delivery
                    </h4>

                    <p>
                        Quick & reliable shipping
                    </p>

                </div>

            </div>


            <div class="trust-card">

                <div class="trust-icon">
                    🔒
                </div>

                <div>

                    <h4>
                        Secure Payment
                    </h4>

                    <p>
                        100% secure checkout
                    </p>

                </div>

            </div>


            <div class="trust-card">

                <div class="trust-icon">
                    ↩️
                </div>

                <div>

                    <h4>
                        Easy Returns
                    </h4>

                    <p>
                        30-day return policy
                    </p>

                </div>

            </div>


            <div class="trust-card">

                <div class="trust-icon">
                    💬
                </div>

                <div>

                    <h4>
                        24/7 Support
                    </h4>

                    <p>
                        We're here to help
                    </p>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- =========================================================
     CATEGORIES
========================================================= -->

<section
    class="section"
    id="categories">

    <div class="container">


        <div class="section-header">

            <div>

                <h2 class="section-title">
                    Shop by Category
                </h2>

                <p class="section-subtitle">
                    Find exactly what you're looking for
                </p>

            </div>

        </div>


        <div
            class="categories-grid"
            id="categoriesGrid">

        </div>


    </div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section
    class="section"
    id="products">

    <div class="container">


        <div class="section-header">

            <div>

                <h2 class="section-title">
                    Featured Products
                </h2>

                <p class="section-subtitle">
                    Popular products picked for you
                </p>

            </div>

        </div>


        <div class="product-toolbar">


            <div class="filters">


                <button
                    class="filter-btn active"
                    data-filter="All">

                    All

                </button>


                <button
                    class="filter-btn"
                    data-filter="Smartphones">

                    Smartphones

                </button>


                <button
                    class="filter-btn"
                    data-filter="Laptops">

                    Laptops

                </button>


                <button
                    class="filter-btn"
                    data-filter="Gadgets">

                    Gadgets

                </button>


                <button
                    class="filter-btn"
                    data-filter="Clothing">

                    Clothing

                </button>


                <button
                    class="filter-btn"
                    data-filter="Footwear">

                    Footwear

                </button>


            </div>


            <div
                class="results-count"
                id="resultsCount">

                0 products

            </div>


        </div>


        <div
            class="products-grid"
            id="productsGrid">

        </div>


    </div>

</section>


<!-- =========================================================
     FLASH DEAL
========================================================= -->

<section
    class="deal-section"
    id="deals">

    <div class="container">


        <div class="deal-card">


            <div>

                <div class="deal-label">
                    Limited time offer
                </div>


                <h2>
                    Flash Deal — Up to 40% Off
                </h2>


                <p>

                    Grab selected products before the countdown
                    ends. Once the timer reaches zero, these
                    prices are gone.

                </p>


                <div class="timer">


                    <div class="timer-box">

                        <strong id="hours">
                            00
                        </strong>

                        <small>
                            Hours
                        </small>

                    </div>


                    <div class="timer-box">

                        <strong id="minutes">
                            00
                        </strong>

                        <small>
                            Minutes
                        </small>

                    </div>


                    <div class="timer-box">

                        <strong id="seconds">
                            00
                        </strong>

                        <small>
                            Seconds
                        </small>

                    </div>


                </div>

            </div>


            <div class="deal-action">

                <button
                    class="btn btn-primary"
                    id="dealBuyBtn">

                    Shop Deal →

                </button>

            </div>


        </div>

    </div>

</section>


<!-- =========================================================
     REVIEWS
========================================================= -->

<section
    class="section"
    id="reviews">

    <div class="container">


        <div class="section-header">

            <div>

                <h2 class="section-title">
                    What Customers Say
                </h2>

                <p class="section-subtitle">
                    Real feedback from our customers
                </p>

            </div>

        </div>


        <div
            class="testimonials"
            id="testimonialsList">

        </div>


    </div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="newsletter">

    <div class="container">


        <div class="newsletter-card">

            <h2>
                Get 10% Off Your First Order
            </h2>

            <p>

                Subscribe for exclusive deals,
                new product launches and special offers.

            </p>


            <form
                class="newsletter-form"
                id="newsletterForm">


                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Enter your email address"
                    required>


                <button
                    class="btn btn-primary"
                    type="submit">

                    Subscribe

                </button>


            </form>


            <div
                class="newsletter-message"
                id="newsletterMsg">

            </div>


        </div>


    </div>

</section>


</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">


        <div class="footer-grid">


            <div>

                <div class="footer-logo">
                    Nexus<span>Shop</span>
                </div>


                <p class="footer-about">

                    Your modern destination for technology,
                    fashion, accessories and everyday essentials.
                    Shop smarter. Live better.

                </p>

            </div>


            <div>

                <h4>
                    Shop
                </h4>

                <ul>

                    <li>
                        <a href="#products">
                            All Products
                        </a>
                    </li>

                    <li>
                        <a href="#categories">
                            Categories
                        </a>
                    </li>

                    <li>
                        <a href="#deals">
                            Deals
                        </a>
                    </li>

                    <li>
                        <a href="#products">
                            New Arrivals
                        </a>
                    </li>

                </ul>

            </div>


            <div>

                <h4>
                    Support
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            Contact Us
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Shipping
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Returns
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            FAQ
                        </a>
                    </li>

                </ul>

            </div>


            <div>

                <h4>
                    Company
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            About Us
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Privacy
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Terms
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Careers
                        </a>
                    </li>

                </ul>

            </div>


        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span>
                NexusShop. All rights reserved.
            </span>

            <span>
                Premium shopping experience
            </span>

        </div>


    </div>

</footer>


<!-- =========================================================
     OVERLAY
========================================================= -->

<div
    class="overlay"
    id="overlay">
</div>


<!-- =========================================================
     CART DRAWER
========================================================= -->

<aside
    class="cart-drawer"
    id="cartDrawer">


    <div class="cart-header">

        <h3>
            Shopping Cart
        </h3>


        <button
            class="modal-close"
            id="closeCart">

            ×

        </button>

    </div>


    <div
        class="cart-items"
        id="cartItems">

    </div>


    <div class="cart-footer">


        <div class="subtotal">

            <span>
                Subtotal
            </span>

            <span id="cartSubtotal">
                $0.00
            </span>

        </div>


        <button
            class="checkout-btn"
            id="checkoutBtn">

            Proceed to Checkout

        </button>


    </div>


</aside>


<!-- =========================================================
     ACCOUNT MODAL
========================================================= -->

<div
    class="modal"
    id="accountModal">


    <div class="modal-card">


        <button
            class="modal-close"
            id="closeAccount">

            ×

        </button>


        <h2>
            Welcome Back
        </h2>


        <p>
            Sign in to manage your account and orders.
        </p>


        <form id="loginForm">


            <div class="form-group">

                <label>
                    Email Address
                </label>

                <input
                    type="email"
                    id="loginEmail"
                    placeholder="you@example.com"
                    required>

            </div>


            <div class="form-group">

                <label>
                    Password
                </label>

                <input
                    type="password"
                    id="loginPassword"
                    placeholder="••••••••"
                    required>

            </div>


            <button
                class="btn btn-primary login-btn"
                type="submit">

                Sign In

            </button>


        </form>


    </div>

</div>


<!-- =========================================================
     TOAST
========================================================= -->

<div
    class="toast-container"
    id="toastContainer">

</div>


<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>


/* =========================================================
   PRODUCTS
========================================================= */

const products = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        category: "Smartphones",
        price: 999,
        rating: 4.9,
        reviews: 328,
        icon: "📱",
        badge: "Popular"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        category: "Laptops",
        price: 1999,
        rating: 4.9,
        reviews: 215,
        icon: "💻",
        badge: "Best Seller"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        category: "Gadgets",
        price: 399,
        rating: 4.8,
        reviews: 189,
        icon: "⌚",
        badge: "Trending"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        category: "Footwear",
        price: 150,
        rating: 4.7,
        reviews: 142,
        icon: "👟",
        badge: "Hot"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        category: "Gadgets",
        price: 2499,
        rating: 4.9,
        reviews: 97,
        icon: "📷",
        badge: "Premium"
    },

    {
        id: 6,
        title: "Chanel No. 5",
        category: "Accessories",
        price: 145,
        rating: 4.8,
        reviews: 84,
        icon: "🌸",
        badge: "Luxury"
    },

    {
        id: 7,
        title: "Travel Backpack",
        category: "Accessories",
        price: 79,
        rating: 4.6,
        reviews: 112,
        icon: "🎒",
        badge: "New"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        category: "Gadgets",
        price: 399,
        rating: 4.9,
        reviews: 421,
        icon: "🎧",
        badge: "Top Rated"
    }

];


/* =========================================================
   CATEGORIES
========================================================= */

const categories = [

    {
        name: "Smartphones",
        icon: "📱"
    },

    {
        name: "Laptops",
        icon: "💻"
    },

    {
        name: "Clothing",
        icon: "👕"
    },

    {
        name: "Gadgets",
        icon: "⌚"
    },

    {
        name: "Footwear",
        icon: "👟"
    },

    {
        name: "Accessories",
        icon: "🎒"
    }

];


/* =========================================================
   TESTIMONIALS
========================================================= */

const testimonials = [

    {
        name: "Sarah Johnson",
        role: "Verified Customer",
        avatar: "SJ",
        text:
            "The shopping experience was incredibly smooth. My order arrived earlier than expected and the product quality was excellent."
    },

    {
        name: "Michael Chen",
        role: "Verified Customer",
        avatar: "MC",
        text:
            "Great selection and very easy to navigate. I especially liked the product filters and simple checkout experience."
    },

    {
        name: "Emily Williams",
        role: "Verified Customer",
        avatar: "EW",
        text:
            "NexusShop has become one of my favorite online stores. The deals are excellent and customer support is very responsive."
    }

];


/* =========================================================
   STATE
========================================================= */

let cart = [];

let wishlist = new Set();

let currentFilter = "All";


/* =========================================================
   DOM
========================================================= */

const categoriesGrid =
    document.getElementById("categoriesGrid");

const productsGrid =
    document.getElementById("productsGrid");

const resultsCount =
    document.getElementById("resultsCount");

const cartCount =
    document.getElementById("cartCount");

const wishlistCount =
    document.getElementById("wishlistCount");

const cartDrawer =
    document.getElementById("cartDrawer");

const cartItems =
    document.getElementById("cartItems");

const cartSubtotal =
    document.getElementById("cartSubtotal");

const overlay =
    document.getElementById("overlay");

const accountModal =
    document.getElementById("accountModal");

const mobileNav =
    document.getElementById("mobileNav");


/* =========================================================
   RENDER CATEGORIES
========================================================= */

function renderCategories() {

    categoriesGrid.innerHTML =
        categories.map(category => `

            <button
                class="category-card"
                onclick="selectCategory('${category.name}')">

                <div class="category-icon">
                    ${category.icon}
                </div>

                <h3>
                    ${category.name}
                </h3>

            </button>

        `).join("");

}


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts(list = products) {

    productsGrid.innerHTML = "";


    if (list.length === 0) {

        productsGrid.innerHTML = `

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px 20px;
                color:#64748b;
            ">

                <div style="
                    font-size:50px;
                    margin-bottom:15px;
                ">
                    🔍
                </div>

                <h3 style="color:#f8fafc">
                    No products found
                </h3>

                <p>
                    Try another search or category.
                </p>

            </div>

        `;

        resultsCount.textContent =
            "0 products";

        return;
    }


    list.forEach(product => {

        const isWishlisted =
            wishlist.has(product.id);


        const card =
            document.createElement("article");

        card.className =
            "product-card";


        card.innerHTML = `

            <div class="product-image">

                <span class="product-badge">
                    ${product.badge}
                </span>

                <button
                    class="wishlist-btn ${
                        isWishlisted
                            ? "active"
                            : ""
                    }"
                    onclick="toggleWishlist(${product.id})">

                    ${
                        isWishlisted
                            ? "♥"
                            : "♡"
                    }

                </button>

                <span>
                    ${product.icon}
                </span>

            </div>


            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-title">
                    ${product.title}
                </div>

                <div class="rating">

                    ⭐ ${product.rating}

                    <span>
                        (${product.reviews})
                    </span>

                </div>


                <div class="product-bottom">

                    <div class="price">
                        $${product.price.toLocaleString()}
                    </div>

                    <button
                        class="add-btn"
                        onclick="addToCart(${product.id})">

                        Add +

                    </button>

                </div>

            </div>

        `;


        productsGrid.appendChild(card);

    });


    resultsCount.textContent =
        `${list.length} product${
            list.length === 1
                ? ""
                : "s"
        }`;

}


/* =========================================================
   FILTER
========================================================= */

function filterProducts() {

    const search =
        document
            .getElementById("searchInput")
            .value
            .toLowerCase()
            .trim();


    let filtered =
        products;


    if (currentFilter !== "All") {

        filtered =
            filtered.filter(product =>
                product.category === currentFilter
            );

    }


    if (search) {

        filtered =
            filtered.filter(product =>

                product.title
                    .toLowerCase()
                    .includes(search)

                ||

                product.category
                    .toLowerCase()
                    .includes(search)

            );

    }


    renderProducts(filtered);

}


/* =========================================================
   CATEGORY
========================================================= */

function selectCategory(category) {

    currentFilter =
        category;


    document
        .getElementById("searchInput")
        .value = "";


    document
        .querySelectorAll(".filter-btn")
        .forEach(button => {

            button.classList.toggle(
                "active",
                button.dataset.filter === category
            );

        });


    filterProducts();

    scrollToProducts();

}


/* =========================================================
   FILTER BUTTONS
========================================================= */

document
    .querySelectorAll(".filter-btn")
    .forEach(button => {

        button.addEventListener(
            "click",
            () => {

                currentFilter =
                    button.dataset.filter;


                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );


                button.classList.add("active");

                filterProducts();

            }
        );

    });


/* =========================================================
   SEARCH
========================================================= */

document
    .getElementById("searchBtn")
    .addEventListener(
        "click",
        filterProducts
    );


document
    .getElementById("searchInput")
    .addEventListener(
        "input",
        filterProducts
    );


document
    .getElementById("searchInput")
    .addEventListener(
        "keydown",
        event => {

            if (event.key === "Enter") {

                filterProducts();

            }

        }
    );


/* =========================================================
   ADD TO CART
========================================================= */

function addToCart(productId) {

    const product =
        products.find(
            p => p.id === productId
        );


    if (!product) return;


    const existing =
        cart.find(
            item => item.id === productId
        );


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({

            ...product,

            quantity: 1

        });

    }


    updateCart();


    showToast(
        `${product.title} added to cart`
    );

}


/* =========================================================
   UPDATE CART
========================================================= */

function updateCart() {

    const totalItems =
        cart.reduce(
            (total, item) =>
                total + item.quantity,
            0
        );


    cartCount.textContent =
        totalItems;


    if (cart.length === 0) {

        cartItems.innerHTML = `

            <div class="empty-cart">

                <div class="empty-cart-icon">
                    🛒
                </div>

                <h3 style="color:#f8fafc">
                    Your cart is empty
                </h3>

                <p>
                    Add products to see them here.
                </p>

            </div>

        `;

    } else {

        cartItems.innerHTML =
            cart.map(item => `

                <div class="cart-item">

                    <div class="cart-item-image">
                        ${item.icon}
                    </div>


                    <div>

                        <h4>
                            ${item.title}
                        </h4>

                        <div class="cart-item-price">
                            $${item.price.toLocaleString()}
                        </div>


                        <div class="quantity">

                            <button
                                onclick="changeQuantity(
                                    ${item.id},
                                    -1
                                )">

                                −

                            </button>


                            <span>
                                ${item.quantity}
                            </span>


                            <button
                                onclick="changeQuantity(
                                    ${item.id},
                                    1
                                )">

                                +

                            </button>

                        </div>

                    </div>


                    <button
                        class="remove-item"
                        onclick="removeFromCart(${item.id})">

                        Remove

                    </button>

                </div>

            `).join("");

    }


    const subtotal =
        cart.reduce(
            (total, item) =>
                total +
                item.price *
                item.quantity,
            0
        );


    cartSubtotal.textContent =
        `$${subtotal.toLocaleString()}`;

}


/* =========================================================
   CHANGE QUANTITY
========================================================= */

function changeQuantity(
    productId,
    amount
) {

    const item =
        cart.find(
            item => item.id === productId
        );


    if (!item) return;


    item.quantity += amount;


    if (item.quantity <= 0) {

        cart =
            cart.filter(
                item =>
                    item.id !== productId
            );

    }


    updateCart();

}


/* =========================================================
   REMOVE
========================================================= */

function removeFromCart(productId) {

    cart =
        cart.filter(
            item =>
                item.id !== productId
        );


    updateCart();

    showToast(
        "Item removed from cart"
    );

}


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(productId) {

    const product =
        products.find(
            p => p.id === productId
        );


    if (!product) return;


    if (wishlist.has(productId)) {

        wishlist.delete(productId);

        showToast(
            `${product.title} removed from wishlist`
        );

    } else {

        wishlist.add(productId);

        showToast(
            `${product.title} added to wishlist`
        );

    }


    wishlistCount.textContent =
        wishlist.size;


    filterProducts();

}


/* =========================================================
   WISHLIST HEADER
========================================================= */

document
    .getElementById("wishlistHeader")
    .addEventListener(
        "click",
        () => {

            if (wishlist.size === 0) {

                showToast(
                    "Your wishlist is empty"
                );

                return;

            }


            currentFilter =
                "All";


            const wishlistProducts =
                products.filter(
                    product =>
                        wishlist.has(product.id)
                );


            renderProducts(
                wishlistProducts
            );


            scrollToProducts();

        }
    );


/* =========================================================
   CART OPEN
========================================================= */

function openCart() {

    cartDrawer.classList.add("open");

    overlay.classList.add("show");

}


/* =========================================================
   CART CLOSE
========================================================= */

function closeCart() {

    cartDrawer.classList.remove("open");

    overlay.classList.remove("show");

}


document
    .getElementById("cartBtn")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("closeCart")
    .addEventListener(
        "click",
        closeCart
    );


overlay.addEventListener(
    "click",
    () => {

        closeCart();

        accountModal.classList.remove(
            "show"
        );

        document.body.classList.remove(
            "modal-open"
        );

    }
);


/* =========================================================
   ACCOUNT MODAL
========================================================= */

document
    .getElementById("accountBtn")
    .addEventListener(
        "click",
        () => {

            accountModal.classList.add(
                "show"
            );

            document.body.classList.add(
                "modal-open"
            );

            overlay.classList.add(
                "show"
            );

        }
    );


document
    .getElementById("closeAccount")
    .addEventListener(
        "click",
        () => {

            accountModal.classList.remove(
                "show"
            );

            document.body.classList.remove(
                "modal-open"
            );

            overlay.classList.remove(
                "show"
            );

        }
    );


/* =========================================================
   LOGIN
========================================================= */

document
    .getElementById("loginForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();


            const email =
                document
                    .getElementById(
                        "loginEmail"
                    )
                    .value;


            accountModal.classList.remove(
                "show"
            );

            overlay.classList.remove(
                "show"
            );

            document.body.classList.remove(
                "modal-open"
            );


            showToast(
                `Welcome back, ${email}`
            );

        }
    );


/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();


            const email =
                document
                    .getElementById(
                        "newsletterEmail"
                    )
                    .value
                    .trim();


            const message =
                document.getElementById(
                    "newsletterMsg"
                );


            if (!email) {

                message.textContent =
                    "Please enter your email.";

                return;

            }


            message.textContent =
                "✓ Thanks for subscribing! Your 10% discount is ready.";


            document
                .getElementById(
                    "newsletterEmail"
                )
                .value = "";


            showToast(
                "Subscription successful!"
            );

        }
    );


/* =========================================================
   DEAL BUTTON
========================================================= */

document
    .getElementById("dealBuyBtn")
    .addEventListener(
        "click",
        () => {

            addToCart(8);

            openCart();

        }
    );


/* =========================================================
   CHECKOUT
========================================================= */

document
    .getElementById("checkoutBtn")
    .addEventListener(
        "click",
        () => {

            if (cart.length === 0) {

                showToast(
                    "Your cart is empty"
                );

                return;

            }


            showToast(
                "Checkout page coming soon 🚀"
            );

        }
    );


/* =========================================================
   TESTIMONIALS
========================================================= */

function renderTestimonials() {

    document
        .getElementById(
            "testimonialsList"
        )
        .innerHTML =

        testimonials.map(item => `

            <article class="testimonial">

                <div class="testimonial-stars">
                    ⭐⭐⭐⭐⭐
                </div>


                <p>
                    "${item.text}"
                </p>


                <div class="customer">

                    <div class="avatar">
                        ${item.avatar}
                    </div>


                    <div>

                        <strong>
                            ${item.name}
                        </strong>

                        <span>
                            ${item.role}
                        </span>

                    </div>

                </div>

            </article>

        `).join("");

}


/* =========================================================
   TOAST
========================================================= */

function showToast(message) {

    const container =
        document.getElementById(
            "toastContainer"
        );


    const toast =
        document.createElement(
            "div"
        );


    toast.className =
        "toast";


    toast.textContent =
        message;


    container.appendChild(
        toast
    );


    setTimeout(
        () => {

            toast.remove();

        },
        2800
    );

}


/* =========================================================
   MOBILE MENU
========================================================= */

document
    .getElementById("mobileToggle")
    .addEventListener(
        "click",
        () => {

            mobileNav.classList.toggle(
                "show"
            );

        }
    );


document
    .querySelectorAll(".mobile-nav a")
    .forEach(link => {

        link.addEventListener(
            "click",
            () => {

                mobileNav.classList.remove(
                    "show"
                );

            }
        );

    });


/* =========================================================
   SCROLL
========================================================= */

function scrollToProducts() {

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


function scrollToDeals() {

    document
        .getElementById("deals")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* =========================================================
   YEAR
========================================================= */

document
    .getElementById("year")
    .textContent =
    new Date().getFullYear();


/* =========================================================
   FLASH DEAL TIMER
========================================================= */

let dealEnd =
    Date.now() +
    (
        24 *
        60 *
        60 *
        1000
    ) +
    (
        36 *
        60 *
        1000
    );


function updateTimer() {

    const remaining =
        Math.max(
            0,
            dealEnd -
            Date.now()
        );


    const totalSeconds =
        Math.floor(
            remaining / 1000
        );


    const hours =
        Math.floor(
            totalSeconds / 3600
        );


    const minutes =
        Math.floor(
            (totalSeconds % 3600) /
            60
        );


    const seconds =
        totalSeconds % 60;


    document
        .getElementById("hours")
        .textContent =
        String(hours)
            .padStart(2, "0");


    document
        .getElementById("minutes")
        .textContent =
        String(minutes)
            .padStart(2, "0");


    document
        .getElementById("seconds")
        .textContent =
        String(seconds)
            .padStart(2, "0");

}


setInterval(
    updateTimer,
    1000
);


/* =========================================================
   INITIALIZE
========================================================= */

renderCategories();

renderProducts();

renderTestimonials();

updateCart();

updateTimer();


</script>

</body>
</html>
