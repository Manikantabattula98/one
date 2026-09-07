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
