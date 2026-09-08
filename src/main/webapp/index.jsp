<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Modern Online Store</title>

    <meta name="description"
          content="NexusShop - Shop smartphones, laptops, gadgets, clothing, footwear and accessories.">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <style>

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
            background: #f7f8fc;
            color: #17181c;
            line-height: 1.6;
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

        :root {
            --primary: #6c4df6;
            --primary-dark: #5638e7;
            --secondary: #ff5c7a;
            --dark: #17181c;
            --muted: #6d7280;
            --border: #e7e8ed;
            --white: #ffffff;
            --light: #f7f8fc;
            --success: #16a34a;
            --warning: #f59e0b;
            --danger: #ef4444;
            --shadow-sm: 0 4px 15px rgba(20, 20, 40, .06);
            --shadow: 0 12px 35px rgba(20, 20, 40, .10);
            --radius: 18px;
        }

        /* =========================================================
           GLOBAL
        ========================================================= */

        .container {
            width: min(1180px, calc(100% - 40px));
            margin: auto;
        }

        .section {
            padding: 80px 0;
        }

        .section-header {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 35px;
        }

        .section-title {
            font-size: 32px;
            line-height: 1.2;
            font-weight: 800;
            letter-spacing: -1px;
        }

        .section-subtitle {
            color: var(--muted);
            margin-top: 8px;
        }

        .btn {
            border: none;
            border-radius: 12px;
            padding: 13px 20px;
            font-weight: 700;
            transition: .25s ease;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: white;
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        .icon-btn {
            width: 44px;
            height: 44px;
            border-radius: 12px;
            border: 1px solid var(--border);
            background: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 19px;
            transition: .2s;
        }

        .icon-btn:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        /* =========================================================
           TOP BAR
        ========================================================= */

        .topbar {
            background: var(--dark);
            color: white;
            font-size: 13px;
        }

        .topbar-inner {
            min-height: 38px;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
        }

        .topbar strong {
            color: #cfc7ff;
        }

        /* =========================================================
           HEADER
        ========================================================= */

        .header {
            background: rgba(255,255,255,.96);
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 1000;
            backdrop-filter: blur(15px);
        }

        .header-inner {
            min-height: 78px;
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .logo {
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -1px;
            white-space: nowrap;
        }

        .logo span {
            color: var(--primary);
        }

        .nav {
            display: flex;
            align-items: center;
            gap: 24px;
        }

        .nav a {
            font-size: 14px;
            font-weight: 600;
            color: #555b68;
            transition: .2s;
        }

        .nav a:hover {
            color: var(--primary);
        }

        .search {
            margin-left: auto;
            width: min(350px, 32vw);
            position: relative;
        }

        .search input {
            width: 100%;
            height: 44px;
            border: 1px solid var(--border);
            background: #f7f7fa;
            border-radius: 12px;
            padding: 0 50px 0 16px;
            outline: none;
            transition: .2s;
        }

        .search input:focus {
            background: white;
            border-color: var(--primary);
        }

        .search button {
            position: absolute;
            right: 5px;
            top: 5px;
            width: 34px;
            height: 34px;
            border: none;
            border-radius: 9px;
            background: var(--primary);
            color: white;
        }

        .header-actions {
            display: flex;
            gap: 8px;
        }

        .badge-count {
            position: absolute;
            top: -6px;
            right: -6px;
            min-width: 19px;
            height: 19px;
            padding: 0 5px;
            background: var(--secondary);
            color: white;
            font-size: 10px;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: 800;
        }

        .action-wrap {
            position: relative;
        }

        .mobile-toggle {
            display: none;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            padding: 55px 0 30px;
        }

        .hero-card {
            min-height: 480px;
            border-radius: 28px;
            overflow: hidden;
            background:
                radial-gradient(circle at 90% 20%, rgba(108,77,246,.20), transparent 30%),
                linear-gradient(135deg, #f0edff, #ffffff 60%);
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            padding: 60px;
            position: relative;
        }

        .hero-content {
            max-width: 560px;
        }

        .eyebrow {
            display: inline-flex;
            background: #e9e4ff;
            color: var(--primary);
            padding: 7px 12px;
            border-radius: 30px;
            font-size: 12px;
            font-weight: 800;
            margin-bottom: 18px;
        }

        .hero h1 {
            font-size: clamp(42px, 5vw, 68px);
            line-height: 1.02;
            letter-spacing: -3px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: var(--primary);
        }

        .hero p {
            color: var(--muted);
            font-size: 17px;
            max-width: 500px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .hero-visual {
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .hero-product {
            width: 330px;
            height: 330px;
            border-radius: 50%;
            background: white;
            box-shadow: var(--shadow);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 150px;
        }

        .floating-card {
            position: absolute;
            background: white;
            padding: 14px 18px;
            border-radius: 14px;
            box-shadow: var(--shadow);
            font-size: 13px;
            font-weight: 700;
        }

        .floating-one {
            top: 30px;
            right: 20px;
        }

        .floating-two {
            bottom: 30px;
            left: 10px;
        }

        /* =========================================================
           TRUST
        ========================================================= */

        .trust-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
            margin-top: 25px;
        }

        .trust-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 20px;
            display: flex;
            gap: 14px;
            align-items: center;
        }

        .trust-icon {
            width: 44px;
            height: 44px;
            border-radius: 12px;
            background: #f0edff;
            display: grid;
            place-items: center;
            font-size: 21px;
        }

        .trust-card h4 {
            font-size: 14px;
        }

        .trust-card p {
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            padding: 25px 15px;
            text-align: center;
            transition: .25s;
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
            border-color: #d8d1ff;
        }

        .category-icon {
            width: 65px;
            height: 65px;
            border-radius: 20px;
            background: #f4f1ff;
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 30px;
        }

        .category-card h3 {
            font-size: 14px;
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */

        .product-toolbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            margin-bottom: 25px;
        }

        .filters {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .filter-btn {
            border: 1px solid var(--border);
            background: white;
            border-radius: 30px;
            padding: 9px 16px;
            font-size: 13px;
            font-weight: 600;
            transition: .2s;
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        .results-count {
            color: var(--muted);
            font-size: 13px;
            white-space: nowrap;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            overflow: hidden;
            transition: .25s;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .product-image {
            height: 230px;
            background: #f5f5f8;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 80px;
            position: relative;
        }

        .product-badge {
            position: absolute;
            left: 12px;
            top: 12px;
            background: var(--secondary);
            color: white;
            padding: 5px 9px;
            border-radius: 7px;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .wishlist-btn {
            position: absolute;
            right: 12px;
            top: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            border: none;
            background: white;
            box-shadow: 0 5px 15px rgba(0,0,0,.08);
            font-size: 18px;
        }

        .wishlist-btn.active {
            color: var(--secondary);
        }

        .product-info {
            padding: 18px;
        }

        .product-category {
            color: var(--muted);
            font-size: 11px;
            text-transform: uppercase;
            font-weight: 700;
            letter-spacing: .5px;
        }

        .product-title {
            font-size: 15px;
            font-weight: 700;
            margin: 5px 0 8px;
        }

        .rating {
            font-size: 12px;
            margin-bottom: 14px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 5px;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .add-btn {
            border: none;
            background: var(--dark);
            color: white;
            padding: 9px 13px;
            border-radius: 9px;
            font-size: 12px;
            font-weight: 700;
            transition: .2s;
        }

        .add-btn:hover {
            background: var(--primary);
        }

        /* =========================================================
           DEAL
        ========================================================= */

        .deal-section {
            padding: 30px 0 80px;
        }

        .deal-card {
            background: var(--dark);
            color: white;
            border-radius: 25px;
            padding: 45px;
            display: grid;
            grid-template-columns: 1fr auto;
            align-items: center;
            gap: 40px;
            overflow: hidden;
            position: relative;
        }

        .deal-card::after {
            content: "";
            position: absolute;
            width: 300px;
            height: 300px;
            border-radius: 50%;
            border: 50px solid rgba(255,255,255,.04);
            right: -100px;
            top: -100px;
        }

        .deal-label {
            color: #cfc7ff;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .deal-card h2 {
            font-size: 35px;
            margin: 8px 0;
        }

        .deal-card p {
            color: #aeb1bc;
            max-width: 560px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .timer-box {
            background: #292b32;
            border-radius: 10px;
            padding: 10px 14px;
            min-width: 60px;
            text-align: center;
        }

        .timer-box strong {
            display: block;
            font-size: 19px;
        }

        .timer-box small {
            color: #999ca7;
            font-size: 9px;
            text-transform: uppercase;
        }

        .deal-action {
            position: relative;
            z-index: 2;
        }

        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .testimonial {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            padding: 25px;
        }

        .testimonial-stars {
            margin-bottom: 15px;
        }

        .testimonial p {
            color: #555b68;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .avatar {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: #eeeaff;
            display: grid;
            place-items: center;
            font-weight: 800;
            color: var(--primary);
        }

        .customer strong {
            display: block;
            font-size: 13px;
        }

        .customer span {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            padding: 0 0 80px;
        }

        .newsletter-card {
            background: #eeeaff;
            border-radius: 25px;
            padding: 50px;
            text-align: center;
        }

        .newsletter-card h2 {
            font-size: 32px;
            margin-bottom: 8px;
        }

        .newsletter-card p {
            color: var(--muted);
            margin-bottom: 25px;
        }

        .newsletter-form {
            display: flex;
            max-width: 520px;
            margin: auto;
            background: white;
            padding: 5px;
            border-radius: 13px;
            border: 1px solid var(--border);
        }

        .newsletter-form input {
            flex: 1;
            border: none;
            outline: none;
            padding: 0 15px;
        }

        .newsletter-message {
            font-size: 12px;
            margin-top: 12px;
            min-height: 18px;
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            background: #15161a;
            color: white;
            padding: 60px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 50px;
            margin-bottom: 50px;
        }

        .footer-logo {
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .footer-logo span {
            color: #9b87ff;
        }

        .footer-about {
            color: #999ca7;
            max-width: 350px;
            font-size: 13px;
        }

        .footer h4 {
            margin-bottom: 16px;
            font-size: 14px;
        }

        .footer li {
            margin-bottom: 10px;
        }

        .footer li a {
            color: #999ca7;
            font-size: 13px;
        }

        .footer li a:hover {
            color: white;
        }

        .footer-bottom {
            border-top: 1px solid #2a2b30;
            padding-top: 20px;
            color: #777a85;
            font-size: 12px;
            display: flex;
            justify-content: space-between;
        }

        /* =========================================================
           CART DRAWER
        ========================================================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.45);
            z-index: 1998;
            opacity: 0;
            visibility: hidden;
            transition: .3s;
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            right: -450px;
            top: 0;
            width: min(430px, 100%);
            height: 100vh;
            background: white;
            z-index: 2000;
            transition: .35s ease;
            display: flex;
            flex-direction: column;
            box-shadow: -15px 0 40px rgba(0,0,0,.12);
        }

        .cart-drawer.open {
            right: 0;
        }

        .cart-header {
            padding: 22px;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .cart-header h3 {
            font-size: 18px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .empty-cart {
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: var(--muted);
            text-align: center;
        }

        .empty-cart-icon {
            font-size: 55px;
            margin-bottom: 15px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 70px 1fr auto;
            gap: 12px;
            padding: 14px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item-image {
            width: 70px;
            height: 70px;
            background: #f5f5f8;
            border-radius: 12px;
            display: grid;
            place-items: center;
            font-size: 30px;
        }

        .cart-item h4 {
            font-size: 13px;
            margin-bottom: 5px;
        }

        .cart-item-price {
            font-size: 13px;
            font-weight: 700;
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 8px;
        }

        .quantity button {
            width: 25px;
            height: 25px;
            border: 1px solid var(--border);
            background: white;
            border-radius: 6px;
        }

        .quantity span {
            font-size: 12px;
            font-weight: 700;
        }

        .remove-item {
            border: none;
            background: transparent;
            color: var(--danger);
            font-size: 12px;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .subtotal {
            display: flex;
            justify-content: space-between;
            font-size: 17px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .checkout-btn {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 12px;
            background: var(--primary);
            color: white;
            font-weight: 800;
        }

        /* =========================================================
           ACCOUNT MODAL
        ========================================================= */

        .modal {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.5);
            z-index: 3000;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            opacity: 0;
            visibility: hidden;
            transition: .25s;
        }

        .modal.show {
            opacity: 1;
            visibility: visible;
        }

        .modal-card {
            width: min(430px, 100%);
            background: white;
            border-radius: 22px;
            padding: 30px;
            position: relative;
            transform: translateY(15px);
            transition: .25s;
        }

        .modal.show .modal-card {
            transform: translateY(0);
        }

        .modal-close {
            position: absolute;
            top: 15px;
            right: 15px;
            border: none;
            background: #f4f4f6;
            width: 35px;
            height: 35px;
            border-radius: 50%;
        }

        .modal-card h2 {
            margin-bottom: 5px;
        }

        .modal-card > p {
            color: var(--muted);
            font-size: 13px;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 7px;
        }

        .form-group input {
            width: 100%;
            height: 45px;
            border: 1px solid var(--border);
            border-radius: 10px;
            padding: 0 13px;
            outline: none;
        }

        .form-group input:focus {
            border-color: var(--primary);
        }

        .login-btn {
            width: 100%;
            margin-top: 5px;
        }

        /* =========================================================
           TOAST
        ========================================================= */

        .toast-container {
            position: fixed;
            right: 20px;
            bottom: 20px;
            z-index: 5000;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .toast {
            background: var(--dark);
            color: white;
            padding: 13px 17px;
            border-radius: 10px;
            box-shadow: var(--shadow);
            font-size: 13px;
            animation: toastIn .3s ease;
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
           MOBILE
        ========================================================= */

        @media (max-width: 1100px) {

            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .trust-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .nav {
                display: none;
            }

            .mobile-toggle {
                display: flex;
            }

            .header-inner {
                gap: 12px;
            }

            .search {
                width: auto;
                flex: 1;
            }

        }

        @media (max-width: 760px) {

            .container {
                width: min(100% - 28px, 1180px);
            }

            .section {
                padding: 55px 0;
            }

            .section-title {
                font-size: 27px;
            }

            .hero {
                padding-top: 25px;
            }

            .hero-card {
                grid-template-columns: 1fr;
                padding: 35px 25px;
                min-height: auto;
            }

            .hero h1 {
                font-size: 43px;
            }

            .hero-visual {
                margin-top: 35px;
            }

            .hero-product {
                width: 220px;
                height: 220px;
                font-size: 100px;
            }

            .categories-grid,
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .deal-card {
                grid-template-columns: 1fr;
                padding: 30px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 30px;
            }

            .footer-about {
                grid-column: 1 / -1;
            }

            .search {
                display: none;
            }

            .header-inner {
                justify-content: space-between;
            }

            .section-header {
                align-items: start;
                flex-direction: column;
            }

            .product-toolbar {
                align-items: start;
                flex-direction: column;
            }

            .newsletter-card {
                padding: 35px 20px;
            }

        }

        @media (max-width: 430px) {

            .topbar {
                display: none;
            }

            .logo {
                font-size: 21px;
            }

            .header-actions .account-btn {
                display: none;
            }

            .categories-grid,
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }

            .category-card {
                padding: 18px 10px;
            }

            .category-icon {
                width: 52px;
                height: 52px;
                font-size: 23px;
            }

            .product-image {
                height: 170px;
                font-size: 60px;
            }

            .product-info {
                padding: 13px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 15px;
            }

            .add-btn {
                padding: 8px 9px;
            }

            .deal-card h2 {
                font-size: 27px;
            }

            .timer-box {
                min-width: 52px;
                padding: 8px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .footer-bottom {
                flex-direction: column;
                gap: 10px;
            }

            .newsletter-form {
                flex-direction: column;
                gap: 8px;
                background: transparent;
                border: none;
            }

            .newsletter-form input {
                height: 45px;
                border-radius: 10px;
                border: 1px solid var(--border);
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
        🚚 Free shipping on orders over <strong>$50</strong>
    </div>
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header class="header">

    <div class="container header-inner">

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav class="nav">
            <a href="#home">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Products</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
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
                    title="Shopping Cart">
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

    </div>

</header>


<!-- =========================================================
     HERO
========================================================= -->

<main id="home">

    <section class="hero">

        <div class="container">

            <div class="hero-card">

                <div class="hero-content">

                    <div class="eyebrow">
                        ✨ New season collection
                    </div>

                    <h1>
                        Everything you need,
                        <span>in one place.</span>
                    </h1>

                    <p>
                        Discover premium electronics, fashion, accessories
                        and everyday essentials — all carefully selected for
                        modern living.
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


    <!-- =====================================================
         TRUST
    ===================================================== -->

    <section>

        <div class="container">

            <div class="trust-grid">

                <div class="trust-card">

                    <div class="trust-icon">
                        🚚
                    </div>

                    <div>
                        <h4>Fast Delivery</h4>
                        <p>Quick & reliable shipping</p>
                    </div>

                </div>

                <div class="trust-card">

                    <div class="trust-icon">
                        🔒
                    </div>

                    <div>
                        <h4>Secure Payment</h4>
                        <p>100% secure checkout</p>
                    </div>

                </div>

                <div class="trust-card">

                    <div class="trust-icon">
                        ↩️
                    </div>

                    <div>
                        <h4>Easy Returns</h4>
                        <p>30-day return policy</p>
                    </div>

                </div>

                <div class="trust-card">

                    <div class="trust-icon">
                        💬
                    </div>

                    <div>
                        <h4>24/7 Support</h4>
                        <p>We're here to help</p>
                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         CATEGORIES
    ===================================================== -->

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


    <!-- =====================================================
         PRODUCTS
    ===================================================== -->

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


    <!-- =====================================================
         DEAL
    ===================================================== -->

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
                        Grab selected products before the countdown ends.
                        Once the timer reaches zero, these prices are gone.
                    </p>

                    <div class="timer">

                        <div class="timer-box">
                            <strong id="hours">00</strong>
                            <small>Hours</small>
                        </div>

                        <div class="timer-box">
                            <strong id="minutes">00</strong>
                            <small>Minutes</small>
                        </div>

                        <div class="timer-box">
                            <strong id="seconds">00</strong>
                            <small>Seconds</small>
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


    <!-- =====================================================
         REVIEWS
    ===================================================== -->

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


    <!-- =====================================================
         NEWSLETTER
    ===================================================== -->

    <section class="newsletter">

        <div class="container">

            <div class="newsletter-card">

                <h2>
                    Get 10% Off Your First Order
                </h2>

                <p>
                    Subscribe to our newsletter for exclusive deals,
                    product launches and special offers.
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

                <h4>Shop</h4>

                <ul>
                    <li><a href="#products">All Products</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#">New Arrivals</a></li>
                </ul>

            </div>

            <div>

                <h4>Support</h4>

                <ul>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>

            </div>

            <div>

                <h4>Company</h4>

                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Careers</a></li>
                </ul>

            </div>

        </div>

        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NexusShop. All rights reserved.
            </span>

            <span>
                Made with ❤️ for modern shoppers
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
       DATA
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


    const testimonials = [

        {
            name: "Sarah Johnson",
            role: "Verified Customer",
            avatar: "SJ",
            text: "The shopping experience was incredibly smooth. My order arrived earlier than expected and the product quality was excellent."
        },

        {
            name: "Michael Chen",
            role: "Verified Customer",
            avatar: "MC",
            text: "Great selection and very easy to navigate. I especially liked the product filters and the simple checkout experience."
        },

        {
            name: "Emily Williams",
            role: "Verified Customer",
            avatar: "EW",
            text: "NexusShop has become one of my favorite online stores. The deals are excellent and customer support is very responsive."
        }

    ];


    /* =========================================================
       STATE
    ========================================================= */

    let cart = [];

    let wishlist = new Set();

    let currentFilter = "All";


    /* =========================================================
       DOM ELEMENTS
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


    /* =========================================================
       RENDER CATEGORIES
    ========================================================= */

    function renderCategories() {

        categoriesGrid.innerHTML = categories.map(category => {

            return `

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

            `;

        }).join("");

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
                    padding:60px 20px;
                    color:#6d7280;
                ">

                    <div style="
                        font-size:50px;
                        margin-bottom:15px;
                    ">
                        🔍
                    </div>

                    <h3>
                        No products found
                    </h3>

                    <p>
                        Try another search or category.
                    </p>

                </div>

            `;

            resultsCount.textContent = "0 products";

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
                        class="wishlist-btn ${isWishlisted ? "active" : ""}"
                        onclick="toggleWishlist(${product.id})"
                        aria-label="Add to wishlist">

                        ${isWishlisted ? "♥" : "♡"}

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
            `${list.length} product${list.length === 1 ? "" : "s"}`;

    }


    /* =========================================================
       FILTER PRODUCTS
    ========================================================= */

    function filterProducts() {

        const search =
            document
                .getElementById("searchInput")
                .value
                .toLowerCase()
                .trim();


        let filtered = products;


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
       CATEGORY SELECT
    ========================================================= */

    function selectCategory(category) {

        currentFilter = category;

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

            button.addEventListener("click", () => {

                currentFilter =
                    button.dataset.filter;


                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );


                button.classList.add("active");

                filterProducts();

            });

        });


    /* =========================================================
       SEARCH
    ========================================================= */

    document
        .getElementById("searchBtn")
        .addEventListener("click", filterProducts);


    document
        .getElementById("searchInput")
        .addEventListener("keydown", event => {

            if (event.key === "Enter") {

                filterProducts();

            }

        });


    document
        .getElementById("searchInput")
        .addEventListener("input", filterProducts);


    /* =========================================================
       ADD TO CART
    ========================================================= */

    function addToCart(productId) {

        const product =
            products.find(p => p.id === productId);


        if (!product) return;


        const existing =
            cart.find(item =>
                item.id === productId
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

                    <h3>
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
                                    onclick="changeQuantity(${item.id}, -1)">
                                    −
                                </button>

                                <span>
                                    ${item.quantity}
                                </span>

                                <button
                                    onclick="changeQuantity(${item.id}, 1)">
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
                    total + item.price * item.quantity,
                0
            );


        cartSubtotal.textContent =
            `$${subtotal.toLocaleString()}`;

    }


    /* =========================================================
       CHANGE QUANTITY
    ========================================================= */

    function changeQuantity(productId, amount) {

        const item =
            cart.find(item =>
                item.id === productId
            );


        if (!item) return;


        item.quantity += amount;


        if (item.quantity <= 0) {

            cart =
                cart.filter(item =>
                    item.id !== productId
                );

        }


        updateCart();

    }


    /* =========================================================
       REMOVE CART ITEM
    ========================================================= */

    function removeFromCart(productId) {

        cart =
            cart.filter(item =>
                item.id !== productId
            );


        updateCart();

        showToast("Item removed from cart");

    }


    /* =========================================================
       WISHLIST
    ========================================================= */

    function toggleWishlist(productId) {

        const product =
            products.find(p =>
                p.id === productId
            );


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
       CART OPEN / CLOSE
    ========================================================= */

    function openCart() {

        cartDrawer.classList.add("open");

        overlay.classList.add("show");

    }


    function closeCart() {

        cartDrawer.classList.remove("open");

        overlay.classList.remove("show");

    }


    document
        .getElementById("cartBtn")
        .addEventListener("click", openCart);


    document
        .getElementById("closeCart")
        .addEventListener("click", closeCart);


    overlay.addEventListener("click", () => {

        closeCart();

        accountModal.classList.remove("show");

    });


    /* =========================================================
       ACCOUNT
    ========================================================= */

    document
        .getElementById("accountBtn")
        .addEventListener("click", () => {

            accountModal.classList.add("show");

        });


    document
        .getElementById("closeAccount")
        .addEventListener("click", () => {

            accountModal.classList.remove("show");

        });


    /* =========================================================
       LOGIN
    ========================================================= */

    document
        .getElementById("loginForm")
        .addEventListener("submit", event => {

            event.preventDefault();

            const email =
                document
                    .getElementById("loginEmail")
                    .value;


            accountModal.classList.remove("show");

            showToast(
                `Welcome back, ${email}`
            );

        });


    /* =========================================================
       NEWSLETTER
    ========================================================= */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", event => {

            event.preventDefault();


            const email =
                document
                    .getElementById("newsletterEmail")
                    .value.trim();


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
                "🎉 Thanks for subscribing! Your 10% discount is ready.";

            document
                .getElementById("newsletterEmail")
                .value = "";

        });


    /* =========================================================
       DEAL BUTTON
    ========================================================= */

    document
        .getElementById("dealBuyBtn")
        .addEventListener("click", () => {

            const dealProduct =
                products[7];

            addToCart(dealProduct.id);

            openCart();

        });


    /* =========================================================
       CHECKOUT
    ========================================================= */

    document
        .getElementById("checkoutBtn")
        .addEventListener("click", () => {

            if (cart.length === 0) {

                showToast(
                    "Your cart is empty"
                );

                return;

            }


            showToast(
                "Checkout page coming soon 🚀"
            );

        });


    /* =========================================================
       TESTIMONIALS
    ========================================================= */

    function renderTestimonials() {

        document
            .getElementById("testimonialsList")
            .innerHTML = testimonials.map(item => `

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
            document.createElement("div");


        toast.className = "toast";

        toast.textContent = message;


        container.appendChild(toast);


        setTimeout(() => {

            toast.remove();

        }, 2800);

    }


    /* =========================================================
       MOBILE MENU
    ========================================================= */

    document
        .getElementById("mobileToggle")
        .addEventListener("click", () => {

            const nav =
                document.querySelector(".nav");


            const visible =
                nav.style.display === "flex";


            nav.style.display =
                visible ? "none" : "flex";


            if (!visible) {

                nav.style.position = "absolute";

                nav.style.left = "0";

                nav.style.right = "0";

                nav.style.top = "78px";

                nav.style.background = "white";

                nav.style.padding = "20px";

                nav.style.borderBottom =
                    "1px solid #e7e8ed";

                nav.style.flexDirection = "column";

                nav.style.alignItems = "flex-start";

            }

        });


    /* =========================================================
       SCROLL HELPERS
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
       FOOTER YEAR
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
            24 * 60 * 60 * 1000
        ) +
        (
            36 * 60 * 1000
        );


    function updateTimer() {

        const remaining =
            Math.max(
                0,
                dealEnd - Date.now()
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
                (totalSeconds % 3600) / 60
            );


        const seconds =
            totalSeconds % 60;


        document.getElementById("hours")
            .textContent =
            String(hours).padStart(2, "0");


        document.getElementById("minutes")
            .textContent =
            String(minutes).padStart(2, "0");


        document.getElementById("seconds")
            .textContent =
            String(seconds).padStart(2, "0");

    }


    setInterval(updateTimer, 1000);


    /* =========================================================
       INITIALIZE APPLICATION
    ========================================================= */

    renderCategories();

    renderProducts();

    renderTestimonials();

    updateCart();

    updateTimer();

</script>

</body>
</html>
Included in this version
✅ Modern responsive NexusShop UI
✅ Desktop + mobile layout
✅ Sticky navigation
✅ Product search
✅ Category filtering
✅ Product category cards
✅ Product cards
✅ Wishlist functionality
✅ Shopping cart drawer
✅ Add/remove products
✅ Increase/decrease quantity
✅ Automatic cart subtotal
✅ Account/sign-in modal
✅ Flash-deal countdown
✅ Newsletter subscription
✅ Toast notifications
✅ Customer reviews
✅ Trust/service section
✅ Responsive footer
✅ No external JavaScript libraries required

Important: This is a frontend-only application. Login, payment, order processing, database persistence, and real product images/API data are not connected yet.

can you change UI colour from white to blue or black

Yes. I’d recommend a dark black + blue theme rather than pure blue—it will look more premium and modern.

For the code I gave you, you can change the existing CSS variables at the top:

:root {
    --primary: #2563eb;
    --primary-dark: #1d4ed8;
    --secondary: #00b7ff;

    --dark: #050b18;
    --muted: #94a3b8;

    --border: #1e293b;
    --white: #0f172a;
    --light: #020617;

    --success: #22c55e;
    --warning: #f59e0b;
    --danger: #ef4444;

    --shadow-sm: 0 4px 15px rgba(0, 0, 0, .20);
    --shadow: 0 12px 35px rgba(0, 0, 0, .35);

    --radius: 18px;
}

But changing only the variables isn't enough, because the current UI has many hard-coded white and light-gray backgrounds.

If you want, I can 
convert the entire NexusShop UI to a proper premium black + blue theme, including:

🔵 Blue buttons and highlights
🖤 Black/dark background
🔷 Blue glowing effects
🖤 Dark product cards
🔵 Blue category cards
🖤 Dark cart drawer
🖤 Dark login modal
🔵 Blue search bar
🖤 Dark footer
📱 Fully responsive mobile dark theme

I can 
give you the complete updated single-file code so you can directly replace your current index.html.

Give me the complete updated single-file code

Yes — here is the complete single-file NexusShop UI converted to a premium black + blue theme. It is fully self-contained: HTML + CSS + JavaScript in one index.html.

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
🎨 New UI theme

This version is now black + electric blue, rather than white:

🖤 Dark/black overall background
🔵 Electric-blue primary color
💙 Blue glow effects
🖤 Dark product cards
🔵 Blue category highlights
🖤 Dark cart drawer
🖤 Dark login modal
🔵 Blue search and buttons
✨ Premium dark hero section
📱 Mobile responsive
🛒 Fully working cart
❤️ Wishlist
🔍 Live search
⏱️ Flash-deal timer

You can change the entire blue shade from one place at the top of the CSS:

--primary: #1677ff;
--primary-dark: #0057d9;
--primary-light: #4da3ff;
--cyan: #00c8ff;

For example, changing --primary: #1677ff to --primary: #00d4ff will give it a more cyan/neon-blue appearance.

Ad
Ads do not influence the answers you get from ChatGPT. Your chats stay private. 
Learn about ads and personalization

Sponsored options
Ad

<!doctype html>

<html lang="en"> <head> <meta charset="utf-8" /> <meta name="viewport" content="width=device-width,initial-scale=1" /> <title>NexusShop — Modern E‑Commerce</title>

<!-- Fonts & Icons -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

<style>
    /* ========== ROOT VARIABLES ========== */
    :root {
        --bg: #fafaf8;
        --bg-card: #ffffff;
        --primary: #1a1a2e;
        --primary-light: #2d2d44;
        --accent: #e07a5f;
        --accent-light: #f4d0c4;
        --accent-dark: #c05a3e;
        --muted: #6b6b7a;
        --muted-light: #a0a0b0;
        --surface: #f0efed;
        --success: #2a9d8f;
        --warning: #e9c46a;
        --radius: 16px;
        --radius-sm: 10px;
        --shadow: 0 4px 24px rgba(26, 26, 46, 0.06);
        --shadow-hover: 0 12px 48px rgba(26, 26, 46, 0.10);
        --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
        --container: 1240px;
    }

    /* ========== RESET & BASE ========== */
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }
    html {
        scroll-behavior: smooth;
    }
    body {
        font-family: 'Inter', system-ui, -apple-system, sans-serif;
        background: var(--bg);
        color: var(--primary);
        line-height: 1.5;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
    a {
        color: inherit;
        text-decoration: none;
    }
    img {
        display: block;
        max-width: 100%;
    }
    button {
        cursor: pointer;
        font-family: inherit;
        border: none;
        background: none;
        color: inherit;
    }
    input {
        font-family: inherit;
    }

    .container {
        width: 100%;
        max-width: var(--container);
        margin: 0 auto;
        padding: 0 24px;
    }

    /* ========== UTILITIES ========== */
    .muted {
        color: var(--muted);
    }
    .text-center {
        text-align: center;
    }
    .sr-only {
        position: absolute;
        width: 1px;
        height: 1px;
        padding: 0;
        margin: -1px;
        overflow: hidden;
        clip: rect(0, 0, 0, 0);
        border: 0;
    }

    /* ========== BUTTONS ========== */
    .btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 8px;
        padding: 12px 28px;
        border-radius: 999px;
        font-weight: 600;
        font-size: 15px;
        transition: var(--transition);
        border: 2px solid transparent;
    }
    .btn-primary {
        background: var(--accent);
        color: #fff;
        border-color: var(--accent);
    }
    .btn-primary:hover {
        background: var(--accent-dark);
        border-color: var(--accent-dark);
        transform: translateY(-2px);
        box-shadow: 0 8px 24px rgba(224, 122, 95, 0.30);
    }
    .btn-secondary {
        background: var(--primary);
        color: #fff;
        border-color: var(--primary);
    }
    .btn-secondary:hover {
        background: var(--primary-light);
        border-color: var(--primary-light);
        transform: translateY(-2px);
        box-shadow: 0 8px 24px rgba(26, 26, 46, 0.20);
    }
    .btn-outline {
        background: transparent;
        color: var(--primary);
        border-color: rgba(26, 26, 46, 0.15);
    }
    .btn-outline:hover {
        background: var(--primary);
        color: #fff;
        border-color: var(--primary);
        transform: translateY(-2px);
    }
    .btn-ghost {
        background: rgba(255, 255, 255, 0.15);
        color: #fff;
        border-color: rgba(255, 255, 255, 0.25);
    }
    .btn-ghost:hover {
        background: rgba(255, 255, 255, 0.25);
        border-color: rgba(255, 255, 255, 0.4);
        transform: translateY(-2px);
    }
    .btn-sm {
        padding: 8px 18px;
        font-size: 13px;
    }

    /* ========== HEADER ========== */
    header {
        position: sticky;
        top: 0;
        z-index: 100;
        background: rgba(255, 255, 255, 0.92);
        backdrop-filter: blur(16px);
        -webkit-backdrop-filter: blur(16px);
        border-bottom: 1px solid rgba(26, 26, 46, 0.04);
    }
    .header-inner {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 16px;
        padding: 12px 0;
        min-height: 68px;
    }

    .brand {
        display: flex;
        align-items: center;
        gap: 10px;
        font-weight: 800;
        font-size: 22px;
        letter-spacing: -0.5px;
        color: var(--primary);
        flex-shrink: 0;
    }
    .brand .accent {
        color: var(--accent);
    }
    .brand i {
        font-size: 26px;
        color: var(--accent);
    }

    nav.main-nav ul {
        display: flex;
        gap: 4px;
        list-style: none;
        align-items: center;
    }
    nav.main-nav li a {
        display: flex;
        align-items: center;
        gap: 6px;
        padding: 8px 16px;
        border-radius: var(--radius-sm);
        font-weight: 500;
        font-size: 14px;
        color: var(--muted);
        transition: var(--transition);
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
        background: var(--surface);
        color: var(--primary);
    }
    nav.main-nav li a i {
        font-size: 14px;
    }

    .header-actions {
        display: flex;
        align-items: center;
        gap: 6px;
        flex-shrink: 0;
    }
    .header-actions .icon-btn {
        width: 42px;
        height: 42px;
        display: grid;
        place-items: center;
        border-radius: 50%;
        font-size: 18px;
        color: var(--muted);
        transition: var(--transition);
        position: relative;
    }
    .header-actions .icon-btn:hover {
        background: var(--surface);
        color: var(--primary);
    }

    .cart-wrap {
        position: relative;
    }
    .cart-count {
        position: absolute;
        top: -2px;
        right: -2px;
        background: var(--accent);
        color: #fff;
        font-size: 11px;
        font-weight: 700;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        display: grid;
        place-items: center;
        border: 2px solid #fff;
    }

    .search-wrap {
        display: flex;
        align-items: center;
        background: var(--surface);
        border-radius: 999px;
        padding: 0 16px 0 18px;
        transition: var(--transition);
        border: 2px solid transparent;
        min-width: 220px;
    }
    .search-wrap:focus-within {
        border-color: var(--accent);
        background: #fff;
        box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.10);
    }
    .search-wrap input {
        border: 0;
        background: transparent;
        outline: none;
        width: 100%;
        padding: 10px 0;
        font-size: 14px;
        color: var(--primary);
    }
    .search-wrap input::placeholder {
        color: var(--muted-light);
    }
    .search-wrap button {
        padding: 8px 0 8px 10px;
        color: var(--muted);
        font-size: 15px;
        transition: var(--transition);
    }
    .search-wrap button:hover {
        color: var(--accent);
    }

    .mobile-toggle {
        display: none;
        width: 42px;
        height: 42px;
        border-radius: 50%;
        font-size: 20px;
        background: var(--surface);
        color: var(--primary);
        transition: var(--transition);
    }
    .mobile-toggle:hover {
        background: var(--accent-light);
    }

    #mobileMenu {
        display: none;
        background: #fff;
        border-top: 1px solid rgba(26, 26, 46, 0.04);
        padding: 12px 0 20px;
    }
    #mobileMenu ul {
        list-style: none;
        display: flex;
        flex-direction: column;
        gap: 4px;
    }
    #mobileMenu ul li a {
        display: flex;
        align-items: center;
        gap: 12px;
        padding: 12px 16px;
        border-radius: var(--radius-sm);
        font-weight: 500;
        color: var(--primary);
        transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
        background: var(--surface);
    }
    #mobileMenu ul li a i {
        width: 22px;
        color: var(--muted);
    }

    /* ========== HERO ========== */
    .hero {
        position: relative;
        display: flex;
        align-items: center;
        min-height: 480px;
        padding: 60px 0;
        border-radius: var(--radius);
        overflow: hidden;
        margin: 20px 24px 0;
        background: linear-gradient(135deg, #1a1a2e 0%, #2d2d44 100%);
    }
    .hero::before {
        content: '';
        position: absolute;
        inset: 0;
        background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
        opacity: 0.35;
        z-index: 0;
    }
    .hero .container {
        position: relative;
        z-index: 1;
    }
    .hero .badge {
        display: inline-block;
        background: rgba(224, 122, 95, 0.20);
        color: var(--accent);
        padding: 4px 16px;
        border-radius: 999px;
        font-weight: 600;
        font-size: 13px;
        letter-spacing: 0.3px;
        margin-bottom: 16px;
    }
    .hero h1 {
        font-family: 'Playfair Display', serif;
        font-size: 48px;
        font-weight: 700;
        color: #fff;
        line-height: 1.15;
        max-width: 640px;
        margin-bottom: 16px;
    }
    .hero p {
        color: rgba(255, 255, 255, 0.80);
        font-size: 17px;
        max-width: 520px;
        margin-bottom: 28px;
        line-height: 1.6;
    }
    .hero .actions {
        display: flex;
        gap: 12px;
        flex-wrap: wrap;
    }

    /* ========== SECTION ========== */
    .section {
        padding: 56px 0;
    }
    .section-header {
        display: flex;
        align-items: flex-end;
        justify-content: space-between;
        gap: 16px;
        margin-bottom: 32px;
        flex-wrap: wrap;
    }
    .section-header .title-group h2 {
        font-size: 28px;
        font-weight: 700;
        letter-spacing: -0.3px;
    }
    .section-header .title-group p {
        color: var(--muted);
        margin-top: 4px;
        font-size: 15px;
    }
    .section-header .view-all {
        font-weight: 600;
        color: var(--accent);
        display: flex;
        align-items: center;
        gap: 6px;
        font-size: 14px;
        transition: var(--transition);
        white-space: nowrap;
    }
    .section-header .view-all:hover {
        gap: 12px;
        color: var(--accent-dark);
    }

    /* ========== CATEGORIES ========== */
    .categories-grid {
        display: grid;
        grid-template-columns: repeat(6, 1fr);
        gap: 16px;
    }
    .cat-card {
        background: var(--bg-card);
        border-radius: var(--radius);
        padding: 24px 16px;
        text-align: center;
        box-shadow: var(--shadow);
        transition: var(--transition);
        cursor: pointer;
        border: 2px solid transparent;
    }
    .cat-card:hover {
        transform: translateY(-6px);
        box-shadow: var(--shadow-hover);
        border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
        width: 56px;
        height: 56px;
        border-radius: 50%;
        background: var(--accent-light);
        display: grid;
        place-items: center;
        margin: 0 auto 12px;
        font-size: 24px;
        color: var(--accent);
        transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
        background: var(--accent);
        color: #fff;
    }
    .cat-card h4 {
        font-size: 15px;
        font-weight: 600;
    }
    .cat-card .count {
        font-size: 13px;
        color: var(--muted);
        margin-top: 4px;
    }

    /* ========== PRODUCTS ========== */
    .products-grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
    }
    .product-card {
        background: var(--bg-card);
        border-radius: var(--radius);
        overflow: hidden;
        box-shadow: var(--shadow);
        transition: var(--transition);
        display: flex;
        flex-direction: column;
        border: 2px solid transparent;
    }
    .product-card:hover {
        transform: translateY(-6px);
        box-shadow: var(--shadow-hover);
        border-color: var(--accent-light);
    }
    .product-card .img-wrap {
        position: relative;
        overflow: hidden;
        background: var(--surface);
        aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
        transform: scale(1.04);
    }
    .product-card .badge {
        position: absolute;
        top: 12px;
        left: 12px;
        background: var(--accent);
        color: #fff;
        padding: 4px 12px;
        border-radius: 999px;
        font-size: 11px;
        font-weight: 700;
        letter-spacing: 0.3px;
    }
    .product-card .badge.sale {
        background: var(--warning);
        color: var(--primary);
    }
    .product-card .wish-btn {
        position: absolute;
        top: 12px;
        right: 12px;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.90);
        display: grid;
        place-items: center;
        font-size: 16px;
        color: var(--muted);
        transition: var(--transition);
        backdrop-filter: blur(4px);
    }
    .product-card .wish-btn:hover {
        background: #fff;
        color: var(--accent);
        transform: scale(1.10);
    }
    .product-card .body {
        padding: 16px 18px 14px;
        flex: 1;
        display: flex;
        flex-direction: column;
        gap: 6px;
    }
    .product-card .body .category-tag {
        font-size: 12px;
        color: var(--muted-light);
        text-transform: uppercase;
        letter-spacing: 0.5px;
        font-weight: 600;
    }
    .product-card .body h5 {
        font-size: 15px;
        font-weight: 600;
        line-height: 1.3;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }
    .product-card .body .price-row {
        display: flex;
        align-items: center;
        gap: 10px;
        margin-top: 4px;
    }
    .product-card .body .price {
        font-weight: 700;
        font-size: 18px;
        color: var(--primary);
    }
    .product-card .body .old-price {
        color: var(--muted-light);
        text-decoration: line-through;
        font-size: 14px;
    }
    .product-card .body .rating {
        display: flex;
        align-items: center;
        gap: 4px;
        font-size: 13px;
        color: #f5a623;
    }
    .product-card .body .rating span {
        color: var(--muted);
        font-weight: 400;
    }
    .product-card .footer {
        padding: 0 18px 18px;
        display: flex;
        gap: 10px;
    }
    .product-card .footer .add-btn {
        flex: 1;
        padding: 10px;
        border-radius: var(--radius-sm);
        background: var(--primary);
        color: #fff;
        font-weight: 600;
        font-size: 14px;
        transition: var(--transition);
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 8px;
    }
    .product-card .footer .add-btn:hover {
        background: var(--accent);
        transform: scale(1.02);
    }
    .product-card .footer .add-btn.added {
        background: var(--success);
    }

    /* ========== DEAL ========== */
    .deal-wrap {
        display: flex;
        gap: 0;
        background: var(--bg-card);
        border-radius: var(--radius);
        overflow: hidden;
        box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
        flex: 0 0 48%;
        background: var(--surface);
        min-height: 300px;
    }
    .deal-wrap .deal-img img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .deal-wrap .deal-content {
        flex: 1;
        padding: 40px 44px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .deal-wrap .deal-content .tag {
        display: inline-block;
        background: var(--warning);
        color: var(--primary);
        padding: 4px 14px;
        border-radius: 999px;
        font-size: 12px;
        font-weight: 700;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        align-self: flex-start;
        margin-bottom: 12px;
    }
    .deal-wrap .deal-content h3 {
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 6px;
    }
    .deal-wrap .deal-content .desc {
        color: var(--muted);
        margin-bottom: 18px;
    }
    .deal-wrap .deal-content .price-big {
        font-size: 32px;
        font-weight: 800;
        color: var(--primary);
    }
    .deal-wrap .deal-content .price-big .old {
        font-size: 20px;
        font-weight: 400;
        color: var(--muted-light);
        text-decoration: line-through;
        margin-left: 10px;
    }
    .deal-wrap .deal-content .stock {
        font-size: 14px;
        color: var(--muted);
        margin: 4px 0 16px;
    }
    .deal-wrap .deal-content .stock strong {
        color: var(--accent);
    }

    .timer-grid {
        display: flex;
        gap: 12px;
        margin: 16px 0 20px;
    }
    .timer-box {
        background: var(--primary);
        color: #fff;
        padding: 10px 16px;
        border-radius: var(--radius-sm);
        min-width: 68px;
        text-align: center;
    }
    .timer-box .num {
        font-size: 26px;
        font-weight: 700;
        line-height: 1.2;
    }
    .timer-box .label {
        font-size: 11px;
        opacity: 0.70;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
        display: flex;
        gap: 20px;
        overflow-x: auto;
        padding: 8px 4px 16px;
        scroll-snap-type: x mandatory;
        -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar {
        height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
        background: var(--accent-light);
        border-radius: 999px;
    }
    .testimonial-card {
        flex: 0 0 340px;
        background: var(--bg-card);
        border-radius: var(--radius);
        padding: 24px 26px;
        box-shadow: var(--shadow);
        scroll-snap-align: start;
        transition: var(--transition);
    }
    .testimonial-card:hover {
        box-shadow: var(--shadow-hover);
    }
    .testimonial-card .stars {
        color: #f5a623;
        font-size: 16px;
        letter-spacing: 2px;
        margin-bottom: 10px;
    }
    .testimonial-card blockquote {
        font-size: 15px;
        line-height: 1.6;
        color: var(--primary);
        margin-bottom: 14px;
        font-style: italic;
    }
    .testimonial-card .author {
        display: flex;
        align-items: center;
        gap: 12px;
    }
    .testimonial-card .author .avatar {
        width: 44px;
        height: 44px;
        border-radius: 50%;
        object-fit: cover;
        background: var(--surface);
    }
    .testimonial-card .author .name {
        font-weight: 600;
        font-size: 14px;
    }
    .testimonial-card .author .role {
        font-size: 13px;
        color: var(--muted);
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
        background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
        border-radius: var(--radius);
        padding: 48px 56px;
        color: #fff;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 32px;
        flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 {
        font-size: 26px;
        font-weight: 700;
        margin-bottom: 4px;
    }
    .newsletter-wrap .text p {
        opacity: 0.75;
        font-size: 15px;
    }
    .newsletter-wrap form {
        display: flex;
        gap: 10px;
        flex-wrap: wrap;
        flex: 1;
        max-width: 480px;
    }
    .newsletter-wrap form input {
        flex: 1;
        min-width: 200px;
        padding: 14px 20px;
        border-radius: 999px;
        border: 0;
        font-size: 15px;
        background: rgba(255, 255, 255, 0.12);
        color: #fff;
        transition: var(--transition);
        outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder {
        color: rgba(255, 255, 255, 0.5);
    }
    .newsletter-wrap form input:focus {
        outline-color: var(--accent);
        background: rgba(255, 255, 255, 0.18);
    }
    .newsletter-wrap form .btn {
        background: var(--accent);
        color: #fff;
        border-color: var(--accent);
        padding: 14px 32px;
    }
    .newsletter-wrap form .btn:hover {
        background: var(--accent-dark);
        border-color: var(--accent-dark);
    }
    #newsletterMsg {
        margin-top: 12px;
        font-size: 14px;
        opacity: 0.9;
        width: 100%;
    }

    /* ========== FOOTER ========== */
    footer {
        margin-top: 16px;
        padding: 44px 0 28px;
        border-top: 1px solid rgba(26, 26, 46, 0.04);
    }
    .footer-grid {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr 1fr;
        gap: 40px;
        margin-bottom: 32px;
    }
    .footer-grid .brand-col .brand {
        font-size: 20px;
        margin-bottom: 8px;
    }
    .footer-grid .brand-col p {
        color: var(--muted);
        font-size: 14px;
        max-width: 300px;
        line-height: 1.6;
    }
    .footer-grid .brand-col .socials {
        display: flex;
        gap: 10px;
        margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background: var(--surface);
        display: grid;
        place-items: center;
        color: var(--muted);
        transition: var(--transition);
        font-size: 16px;
    }
    .footer-grid .brand-col .socials a:hover {
        background: var(--accent);
        color: #fff;
    }
    .footer-grid .col h5 {
        font-weight: 700;
        font-size: 14px;
        margin-bottom: 12px;
        color: var(--primary);
    }
    .footer-grid .col ul {
        list-style: none;
        display: flex;
        flex-direction: column;
        gap: 6px;
    }
    .footer-grid .col ul li a {
        color: var(--muted);
        font-size: 14px;
        transition: var(--transition);
    }
    .footer-grid .col ul li a:hover {
        color: var(--accent);
    }
    .footer-bottom {
        text-align: center;
        padding-top: 20px;
        border-top: 1px solid rgba(26, 26, 46, 0.04);
        color: var(--muted-light);
        font-size: 13px;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
        .products-grid {
            grid-template-columns: repeat(3, 1fr);
        }
        .categories-grid {
            grid-template-columns: repeat(3, 1fr);
        }
        .footer-grid {
            grid-template-columns: 1fr 1fr;
            gap: 28px;
        }
    }

    @media (max-width: 992px) {
        .hero h1 {
            font-size: 36px;
        }
        .hero {
            min-height: 380px;
            margin: 16px 16px 0;
            padding: 40px 0;
        }
        .deal-wrap {
            flex-direction: column;
        }
        .deal-wrap .deal-img {
            flex: 0 0 240px;
        }
        .deal-wrap .deal-content {
            padding: 28px 30px;
        }
        .newsletter-wrap {
            padding: 32px 28px;
            flex-direction: column;
            text-align: center;
        }
        .newsletter-wrap form {
            max-width: 100%;
        }
        .search-wrap {
            min-width: 150px;
        }
    }

    @media (max-width: 768px) {
        nav.main-nav {
            display: none;
        }
        .mobile-toggle {
            display: grid;
            place-items: center;
        }
        .products-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 14px;
        }
        .categories-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 12px;
        }
        .hero h1 {
            font-size: 28px;
        }
        .hero p {
            font-size: 15px;
        }
        .section-header h2 {
            font-size: 22px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 22px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 26px;
        }
        .timer-box {
            min-width: 56px;
            padding: 8px 12px;
        }
        .timer-box .num {
            font-size: 20px;
        }
        .footer-grid {
            grid-template-columns: 1fr;
            gap: 20px;
        }
        .header-inner {
            flex-wrap: nowrap;
        }
        .brand {
            font-size: 18px;
        }
        .brand i {
            font-size: 20px;
        }
        .search-wrap {
            min-width: 120px;
            padding: 0 10px 0 14px;
        }
        .search-wrap input {
            font-size: 13px;
            padding: 8px 0;
        }
        .header-actions .icon-btn {
            width: 36px;
            height: 36px;
            font-size: 15px;
        }
        .cart-count {
            width: 18px;
            height: 18px;
            font-size: 10px;
        }
        .testimonial-card {
            flex: 0 0 280px;
        }
        .hero .actions .btn {
            padding: 10px 20px;
            font-size: 14px;
        }
        .section {
            padding: 36px 0;
        }
    }

    @media (max-width: 480px) {
        .products-grid {
            grid-template-columns: 1fr 1fr;
            gap: 10px;
        }
        .categories-grid {
            grid-template-columns: 1fr 1fr;
            gap: 10px;
        }
        .hero {
            margin: 10px 10px 0;
            min-height: 300px;
            padding: 28px 0;
            border-radius: var(--radius-sm);
        }
        .hero h1 {
            font-size: 24px;
        }
        .container {
            padding: 0 14px;
        }
        .deal-wrap .deal-content {
            padding: 20px 18px;
        }
        .deal-wrap .deal-img {
            flex: 0 0 180px;
        }
        .newsletter-wrap {
            padding: 24px 18px;
        }
        .newsletter-wrap .text h3 {
            font-size: 20px;
        }
        .product-card .body {
            padding: 12px 12px 8px;
        }
        .product-card .body h5 {
            font-size: 13px;
        }
        .product-card .body .price {
            font-size: 15px;
        }
        .product-card .footer {
            padding: 0 12px 12px;
        }
        .product-card .footer .add-btn {
            font-size: 12px;
            padding: 8px;
        }
        .timer-box {
            min-width: 46px;
            padding: 6px 8px;
        }
        .timer-box .num {
            font-size: 16px;
        }
        .timer-box .label {
            font-size: 9px;
        }
        .cat-card {
            padding: 16px 10px;
        }
        .cat-card .icon-wrap {
            width: 44px;
            height: 44px;
            font-size: 18px;
        }
        .cat-card h4 {
            font-size: 13px;
        }
    }
</style>

</head>

<body>

<!-- ===== HEADER ===== -->
<header>
    <div class="container header-inner">
        <div style="display:flex;align-items:center;gap:12px;">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                <i class="fas fa-bars"></i>
            </button>
            <a class="brand" href="#">
                <i class="fas fa-store-alt"></i>
                <span>Nexus<span class="accent">Shop</span></span>
            </a>
        </div>

        <nav class="main-nav" id="mainNav" aria-label="Main navigation">
            <ul>
                <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </nav>

        <div style="display:flex;align-items:center;gap:10px;">
            <div class="search-wrap" role="search">
                <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
            </div>

            <div class="header-actions">
                <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                <div class="cart-wrap">
                    <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                        <i class="fas fa-shopping-bag"></i>
                    </button>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobileMenu">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
            </ul>
        </div>
    </div>
</header>

<!-- ===== MAIN ===== -->
<main>

    <!-- HERO -->
    <section class="hero" aria-label="Hero banner">
        <div class="container">
            <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
            <h1>Discover Premium <br>Essentials</h1>
            <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
            <div class="actions">
                <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
                <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
            </div>
        </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
        <div class="container">
            <div class="section-header">
                <div class="title-group">
                    <h2 id="cat-title">Browse Categories</h2>
                    <p>Find exactly what you're looking for</p>
                </div>
                <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
        </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
        <div class="container">
            <div class="section-header">
                <div class="title-group">
                    <h2 id="prod-title">Trending Now</h2>
                    <p>What's hot — popular picks from our community</p>
                </div>
                <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="products-grid" id="productsGrid" aria-live="polite"></div>
        </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals" aria-labelledby="deals-title">
        <div class="container">
            <div class="section-header">
                <div class="title-group">
                    <h2 id="deals-title">⚡ Flash Deal</h2>
                    <p>Grab it before it's gone — limited stock</p>
                </div>
            </div>
            <div class="deal-wrap">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                </div>
                <div class="deal-content">
                    <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                    <h3>MacBook Air M2</h3>
                    <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                    <div>
                        <span class="price-big">$999 <span class="old">$1,199</span></span>
                    </div>
                    <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                    <div class="timer-grid" id="dealTimer">
                        <div class="timer-box">
                            <div class="num" id="dealDays">0</div>
                            <div class="label">Days</div>
                        </div>
                        <div class="timer-box">
                            <div class="num" id="dealHours">00</div>
                            <div class="label">Hours</div>
                        </div>
                        <div class="timer-box">
                            <div class="num" id="dealMinutes">00</div>
                            <div class="label">Mins</div>
                        </div>
                        <div class="timer-box">
                            <div class="num" id="dealSeconds">00</div>
                            <div class="label">Secs</div>
                        </div>
                    </div>
                    <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                </div>
            </div>
        </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials" aria-labelledby="test-title">
        <div class="container">
            <div class="section-header">
                <div class="title-group">
                    <h2 id="test-title">What Our Customers Say</h2>
                    <p>Real reviews from real people</p>
                </div>
            </div>
            <div class="testimonials-scroll" id="testimonialsList"></div>
        </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section" aria-labelledby="news-title">
        <div class="container">
            <div class="newsletter-wrap">
                <div class="text">
                    <h3 id="news-title">Stay in the Loop</h3>
                    <p>Get exclusive offers, early access & new arrivals</p>
                </div>
                <form id="newsletterForm" onsubmit="return false;">
                    <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                    <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                    <div id="newsletterMsg"></div>
                </form>
            </div>
        </div>
    </section>

</main>

<!-- ===== FOOTER ===== -->
<footer>
    <div class="container">
        <div class="footer-grid">
            <div class="brand-col">
                <div class="brand">
                    <i class="fas fa-store-alt"></i>
                    <span>Nexus<span class="accent">Shop</span></span>
                </div>
                <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
                <div class="socials">
                    <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="col">
                <h5>Company</h5>
                <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Press</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>
            </div>
            <div class="col">
                <h5>Support</h5>
                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="col">
                <h5>Legal</h5>
                <ul>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Cookies</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            &copy; <span id="year"></span> NexusShop. All rights reserved.
        </div>
    </div>
</footer>

<!-- ===== SCRIPT ===== -->
<script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
            img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
            category: 'Smartphones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
            img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
            category: 'Laptops' },
        { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
            img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
            category: 'Accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
            img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
            category: 'Footwear' },
        { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
            img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
            category: 'Gadgets' },
        { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
            img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
            category: 'Accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
            img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
            category: 'Accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
            img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
            category: 'Gadgets' }
    ];

    const TESTIMONIALS = [{
        name: 'Ava Martin',
        role: 'Verified Buyer',
        avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
        text: 'Fast shipping and excellent support. The product exceeded my expectations!',
        stars: 5
    }, {
        name: 'Michael Lee',
        role: 'Frequent Shopper',
        avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
        text: 'Great selection and smooth checkout. Will definitely shop again.',
        stars: 4
    }, {
        name: 'Sophia Chen',
        role: 'Designer',
        avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
        text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
        stars: 5
    }, {
        name: 'James Wilson',
        role: 'Tech Enthusiast',
        avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
        text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
        stars: 5
    }];

    // ============================================================
    // STATE
    // ============================================================
    let cartCount = 0;

    // ============================================================
    // DOM REFS
    // ============================================================
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ============================================================
    // RENDER FUNCTIONS
    // ============================================================
    function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const el = document.createElement('div');
            el.className = 'cat-card';
            el.innerHTML = `
                <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <div class="count">${cat.count} items</div>
            `;
            el.addEventListener('click', () => {
                searchInput.value = cat.name;
                filterProducts(cat.name);
                document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            categoriesGrid.appendChild(el);
        });
    }

    function renderProducts(list) {
        productsGrid.innerHTML = '';
        if (!list.length) {
            productsGrid.innerHTML =
            `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
            return;
        }
        list.forEach(p => {
            const el = document.createElement('article');
            el.className = 'product-card';
            const badgeClass = p.badge === 'Sale' ? 'sale' : '';
            const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
            const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
            '';
            const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
            el.innerHTML = `
                <div class="img-wrap">
                    <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                    ${badgeHtml}
                    <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                </div>
                <div class="body">
                    <div class="category-tag">${p.category}</div>
                    <h5>${escapeHtml(p.title)}</h5>
                    <div class="price-row">
                        <span class="price">$${p.price.toLocaleString()}</span>
                        ${oldPriceHtml}
                    </div>
                    <div class="rating">
                        ${stars} <span>(${p.reviews})</span>
                    </div>
                </div>
                <div class="footer">
                    <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                </div>
            `;
            productsGrid.appendChild(el);
        });

        // Add to cart listeners
        productsGrid.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', function(e) {
                e.stopPropagation();
                const id = Number(this.dataset.id);
                addToCart(id, this);
            });
        });
    }

    function renderTestimonials() {
        testimonialsList.innerHTML = '';
        TESTIMONIALS.forEach(t => {
            const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
            const el = document.createElement('div');
            el.className = 'testimonial-card';
            el.innerHTML = `
                <div class="stars">${stars}</div>
                <blockquote>“${escapeHtml(t.text)}”</blockquote>
                <div class="author">
                    <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                    <div>
                        <div class="name">${escapeHtml(t.name)}</div>
                        <div class="role">${escapeHtml(t.role)}</div>
                    </div>
                </div>
            `;
            testimonialsList.appendChild(el);
        });
    }

    // ============================================================
    // UTILITY FUNCTIONS
    // ============================================================
    function escapeHtml(text) {
        return String(text).replace(/[&<>"']/g, s => ({
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;'
        } [s]));
    }

    function updateCartCount() {
        cartCountEl.textContent = cartCount;
        // animate
        cartCountEl.style.transform = 'scale(1.3)';
        setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
    }

    function addToCart(productId, btnEl) {
        const p = PRODUCTS.find(x => x.id === productId);
        if (!p) return;
        cartCount++;
        updateCartCount();

        if (btnEl) {
            const orig = btnEl.innerHTML;
            btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
            btnEl.classList.add('added');
            setTimeout(() => {
                btnEl.innerHTML = orig;
                btnEl.classList.remove('added');
            }, 1500);
        }
        // subtle feedback
        const cartBtn = document.getElementById('cartBtn');
        cartBtn.style.color = 'var(--accent)';
        setTimeout(() => cartBtn.style.color = '', 400);
    }

    function filterProducts(query) {
        const q = String(query || '').trim().toLowerCase();
        if (!q) {
            renderProducts(PRODUCTS);
            return;
        }
        const filtered = PRODUCTS.filter(p =>
            p.title.toLowerCase().includes(q) ||
            p.category.toLowerCase().includes(q)
        );
        renderProducts(filtered);
    }

    // ============================================================
    // DEAL TIMER
    // ============================================================
    (function setupDealTimer() {
        const now = new Date();
        const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

        function tick() {
            const diff = target - new Date();
            if (diff <= 0) {
                document.getElementById('dealDays').textContent = '0';
                document.getElementById('dealHours').textContent = '00';
                document.getElementById('dealMinutes').textContent = '00';
                document.getElementById('dealSeconds').textContent = '00';
                return;
            }
            const days = Math.floor(diff / (24 * 3600 * 1000));
            const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
            const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
            const secs = Math.floor((diff % (60 * 1000)) / 1000);
            document.getElementById('dealDays').textContent = days;
            document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
            document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
            document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
        }
        tick();
        setInterval(tick, 1000);
    })();

    // ============================================================
    // EVENT BINDINGS
    // ============================================================

    // Search
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => {
        if (e.key === 'Enter') filterProducts(e.target.value);
    });

    // Mobile menu
    mobileToggle.addEventListener('click', () => {
        const isOpen = mobileMenu.style.display === 'block';
        mobileMenu.style.display = isOpen ? 'none' : 'block';
        mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });

    // Close mobile menu on link click
    mobileMenu.querySelectorAll('a').forEach(link => {
        link.addEventListener('click', () => {
            mobileMenu.style.display = 'none';
            mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
        });
    });

    // Hero buttons
    document.getElementById('shopNow').addEventListener('click', () => {
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
        document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    // Deal buy
    document.getElementById('buyDeal').addEventListener('click', function() {
        cartCount++;
        updateCartCount();
        const orig = this.innerHTML;
        this.innerHTML = '<i class="fas fa-check"></i> Added!';
        this.style.background = 'var(--success)';
        setTimeout(() => {
            this.innerHTML = orig;
            this.style.background = '';
        }, 1600);
    });

    // Newsletter
    newsletterForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = newsletterEmail.value.trim();
        if (!email || !email.includes('@')) {
            newsletterMsg.textContent = 'Please enter a valid email address.';
            newsletterMsg.style.color = '#ffb3b3';
            newsletterMsg.style.display = 'block';
            return;
        }
        newsletterMsg.textContent = '🎉 Thanks for subscribing!';
        newsletterMsg.style.color = '#a8e6cf';
        newsletterMsg.style.display = 'block';
        newsletterEmail.value = '';
        setTimeout(() => {
            newsletterMsg.style.display = 'none';
        }, 3500);
    });

    // Cart button click feedback
    document.getElementById('cartBtn').addEventListener('click', () => {
        alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    // Year in footer
    document.getElementById('year').textContent = new Date().getFullYear();

    // ============================================================
    // INIT
    // ============================================================
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    // Close mobile menu on resize to desktop
    window.addEventListener('resize', () => {
        if (window.innerWidth > 768) {
            mobileMenu.style.display = 'none';
            mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
        }
    });

    console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
</script>

</body> </html>

Close
