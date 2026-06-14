<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>Nova | sleek modern e‑commerce</title>
    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #fefefe;
            color: #11181C;
            scroll-behavior: smooth;
        }

        :root {
            --primary-dark: #0b2b26;
            --primary: #1f6e5c;
            --primary-light: #e6f4f0;
            --accent: #f2b84b;
            --accent-glow: #ffcd7e;
            --gray-100: #f9fafb;
            --gray-200: #f0f2f5;
            --gray-600: #5b6c7c;
            --shadow-sm: 0 12px 24px -8px rgba(0, 0, 0, 0.05), 0 2px 4px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 18px 30px -12px rgba(0, 0, 0, 0.08);
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 16px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* header */
        .glass-header {
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(18px);
            position: sticky;
            top: 0;
            z-index: 100;
            border-bottom: 1px solid rgba(31, 110, 92, 0.08);
        }

        .nav-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
        }

        .logo {
            font-weight: 800;
            font-size: 1.8rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #1f6e5c, #0e4a3e);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

        .logo i {
            background: none;
            color: var(--accent);
            font-size: 1.7rem;
        }

        .desktop-nav ul {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .desktop-nav a {
            font-weight: 500;
            color: #1f2e3a;
            transition: 0.2s;
            font-size: 0.95rem;
        }

        .desktop-nav a:hover {
            color: var(--primary);
        }

        .action-icons {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .icon-round {
            background: var(--gray-200);
            border-radius: 40px;
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s;
            color: #2c3e3a;
            font-size: 1.2rem;
        }

        .icon-round:hover {
            background: var(--primary-light);
            color: var(--primary);
            transform: scale(1.02);
        }

        .cart-holder {
            position: relative;
        }

        .cart-badge {
            position: absolute;
            top: -8px;
            right: -8px;
            background: var(--accent);
            color: #1f2e2a;
            font-weight: 800;
            font-size: 12px;
            width: 22px;
            height: 22px;
            border-radius: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .search-bar {
            background: var(--gray-100);
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 8px;
            border: 1px solid rgba(0,0,0,0.04);
            width: 260px;
        }

        .search-bar input {
            background: transparent;
            border: none;
            outline: none;
            width: 100%;
            font-size: 0.85rem;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* Hero */
        .hero-new {
            background: linear-gradient(125deg, #eef7f4 0%, #ffffff 100%);
            border-radius: 0 0 var(--radius-xl) var(--radius-xl);
            margin: 0 20px 40px 20px;
            padding: 64px 40px;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            max-width: 580px;
        }

        .hero-badge {
            background: rgba(242, 184, 75, 0.2);
            display: inline-block;
            padding: 6px 14px;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.8rem;
            color: #b45f1b;
            margin-bottom: 20px;
        }

        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.2;
            letter-spacing: -0.02em;
            background: linear-gradient(130deg, #0b2b26, #1f6e5c);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            margin-top: 32px;
        }

        .btn-primary {
            background: var(--primary);
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            transition: 0.2s;
            cursor: pointer;
            box-shadow: var(--shadow-sm);
        }

        .btn-primary:hover {
            background: #0e5244;
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid var(--primary);
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            color: var(--primary);
            cursor: pointer;
            transition: 0.2s;
        }

        /* section */
        .section {
            padding: 60px 0;
        }

        .section-title {
            font-size: 2rem;
            font-weight: 700;
            letter-spacing: -0.01em;
            margin-bottom: 12px;
        }

        .section-sub {
            color: var(--gray-600);
            margin-bottom: 32px;
            font-size: 1rem;
        }

        /* category cards */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(170px, 1fr));
            gap: 24px;
        }

        .cat-modern {
            background: white;
            border-radius: var(--radius-lg);
            padding: 24px 12px;
            text-align: center;
            transition: all 0.25s;
            cursor: pointer;
            border: 1px solid #f0edea;
            box-shadow: var(--shadow-sm);
        }

        .cat-modern:hover {
            transform: translateY(-6px);
            border-color: var(--primary-light);
            box-shadow: var(--shadow-md);
        }

        .cat-icon {
            background: var(--primary-light);
            width: 64px;
            height: 64px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            border-radius: 32px;
            font-size: 28px;
            color: var(--primary);
        }

        /* product cards */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: white;
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: 0.25s ease;
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.02);
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 25px 35px -16px rgba(0, 0, 0, 0.12);
        }

        .product-img {
            height: 240px;
            width: 100%;
            object-fit: cover;
            transition: 0.3s;
        }

        .product-info {
            padding: 18px 16px 16px;
        }

        .product-title {
            font-weight: 700;
            font-size: 1rem;
            margin-bottom: 6px;
        }

        .price-block {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin: 12px 0;
        }

        .current {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary);
        }

        .old {
            text-decoration: line-through;
            color: #9aa9b5;
            font-size: 0.8rem;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            margin: 10px 0;
            font-size: 0.8rem;
        }

        .btn-add {
            background: var(--gray-200);
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            color: #1f3b35;
        }

        .btn-add:hover {
            background: var(--primary);
            color: white;
        }

        /* flash sale */
        .flash-container {
            background: linear-gradient(115deg, #0d2a25 0%, #103f37 100%);
            border-radius: var(--radius-xl);
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
            color: white;
        }
        .flash-info {
            flex: 1.2;
            padding: 44px 40px;
        }
        .flash-badge {
            background: rgba(242, 184, 75, 0.25);
            display: inline-block;
            padding: 4px 14px;
            border-radius: 30px;
            font-weight: 600;
            font-size: 0.75rem;
            margin-bottom: 16px;
        }
        .flash-timer {
            display: flex;
            gap: 18px;
            margin: 28px 0 20px;
        }
        .time-block {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(4px);
            border-radius: 20px;
            padding: 14px 10px;
            min-width: 70px;
            text-align: center;
            font-weight: 700;
            font-size: 1.6rem;
        }
        .time-label {
            font-size: 0.7rem;
            opacity: 0.8;
        }
        .flash-image {
            flex: 0.9;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85') center/cover;
            min-height: 320px;
        }

        /* testimonial */
        .testi-slider {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
        }
        .testi-card {
            background: white;
            border-radius: 24px;
            padding: 28px;
            min-width: 320px;
            box-shadow: var(--shadow-sm);
            border: 1px solid #f2ebe5;
        }

        /* newsletter */
        .news-card {
            background: var(--primary-light);
            border-radius: var(--radius-xl);
            text-align: center;
            padding: 48px 28px;
        }
        .news-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 18px;
        }
        .news-group input {
            padding: 14px 20px;
            border-radius: 60px;
            border: none;
            width: 280px;
            background: white;
            box-shadow: var(--shadow-sm);
        }

        footer {
            background: #11181C;
            color: #e2e8f0;
            border-radius: 32px 32px 0 0;
            margin-top: 40px;
            padding: 48px 0 28px;
        }

        @media (max-width: 850px) {
            .desktop-nav, .search-bar {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .hero-content h1 {
                font-size: 2.2rem;
            }
            .flash-container {
                flex-direction: column;
            }
            .flash-image {
                height: 240px;
            }
            .category-grid {
                grid-template-columns: repeat(2,1fr);
            }
        }
        @media (max-width: 540px) {
            .container {
                padding: 0 20px;
            }
            .product-grid {
                grid-template-columns: 1fr;
            }
        }
        button {
            cursor: pointer;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
<div class="glass-header">
    <div class="container nav-flex">
        <div style="display:flex; align-items:center; gap: 15px;">
            <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <div class="logo"><i class="fas fa-gem"></i> Nova</div>
        </div>
        <nav class="desktop-nav">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#" id="catLinkRef">Shop</a></li>
                <li><a href="#deals-sale">Flash</a></li>
                <li><a href="#">New</a></li>
            </ul>
        </nav>
        <div class="action-icons">
            <div class="search-bar">
                <i class="fas fa-search" style="color:var(--gray-600)"></i>
                <input type="text" id="globalSearch" placeholder="Search products...">
            </div>
            <div class="icon-round"><i class="far fa-heart"></i></div>
            <div class="cart-holder" id="cartIcon">
                <div class="icon-round"><i class="fas fa-bag-shopping"></i></div>
                <span class="cart-badge" id="cartCountDisplay">0</span>
            </div>
        </div>
    </div>
    <div id="mobileNavPanel" style="display:none; background:white; border-top:1px solid #eef2f0; padding: 20px;">
        <ul style="list-style:none; display:flex; flex-direction:column; gap:14px;">
            <li><a href="#">Home</a></li><li><a href="#">Categories</a></li><li><a href="#deals-sale">Deals</a></li><li><a href="#">Wishlist</a></li>
        </ul>
    </div>
</div>

<main>
    <div class="hero-new container" style="margin-top: 20px;">
        <div class="hero-content">
            <div class="hero-badge"><i class="fas fa-leaf"></i> fresh summer drop</div>
            <h1>Minimal. Functional.<br>Elevate your daily.</h1>
            <p style="margin-top: 20px; color:#2c4b44;">Curated designs, timeless quality, and exclusive flash sales.</p>
            <div class="btn-group">
                <button class="btn-primary" id="heroShopBtn">Explore now <i class="fas fa-arrow-right"></i></button>
                <button class="btn-outline" id="heroDealsBtn">Flash sale →</button>
            </div>
        </div>
    </div>

    <div class="container section">
        <span class="section-title">browse categories</span>
        <div class="section-sub">Shop by interest — from tech to essentials</div>
        <div class="category-grid" id="categoryGridModern"></div>
    </div>

    <div class="container section">
        <span class="section-title">editor's pick</span>
        <div class="section-sub">most loved this week</div>
        <div class="product-grid" id="productGridDynamic"></div>
    </div>

    <div class="container section" id="deals-sale">
        <div class="flash-container">
            <div class="flash-info">
                <div class="flash-badge"><i class="fas fa-bolt"></i> limited time offer</div>
                <h2 style="font-size: 2rem; margin: 0 0 6px;">MacBook Air M2</h2>
                <p style="opacity:0.85">Next‑gen speed. Supercharged. Now at exclusive price.</p>
                <div class="flash-timer" id="dealTimerSection">
                    <div class="time-block"><span id="dealDays">0</span><div class="time-label">Days</div></div>
                    <div class="time-block"><span id="dealHours">00</span><div class="time-label">Hours</div></div>
                    <div class="time-block"><span id="dealMinutes">00</span><div class="time-label">Mins</div></div>
                    <div class="time-block"><span id="dealSeconds">00</span><div class="time-label">Secs</div></div>
                </div>
                <div style="display:flex; align-items:center; gap:16px; margin: 18px 0;">
                    <span style="font-size:2rem; font-weight:800;">$999</span>
                    <span style="text-decoration:line-through; opacity:0.7;">$1,199</span>
                    <span style="background:#f2b84b; padding:6px 12px; border-radius:40px; color:#1f2e2a; font-weight:700;">-17%</span>
                </div>
                <button class="btn-primary" id="flashBuyBtn"><i class="fas fa-bag-shopping"></i> grab deal</button>
            </div>
            <div class="flash-image"></div>
        </div>
    </div>

    <div class="container section">
        <span class="section-title">kind words</span>
        <div class="testi-slider" id="testimonialsModern">
            <div class="testi-card"><div class="rating">★★★★★</div><p style="margin:12px 0">"Beautiful design and super fast delivery. Absolutely love my new jacket."</p><strong>— Elena C.</strong></div>
            <div class="testi-card"><div class="rating">★★★★★</div><p>"Sleek store experience and the product quality is outstanding."</p><strong>— Marcus D.</strong></div>
            <div class="testi-card"><div class="rating">★★★★☆</div><p>"Easy checkout and the discount codes actually work. will come back."</p><strong>— Olivia S.</strong></div>
        </div>
    </div>

    <div class="container section">
        <div class="news-card">
            <i class="fas fa-envelope-open-text" style="font-size: 40px; color: var(--primary);"></i>
            <h3 style="margin: 12px 0 8px;">join the inner circle</h3>
            <p>Get early access to drops and members-only deals</p>
            <form id="newsSignup" style="display:flex; justify-content:center; gap:12px; flex-wrap:wrap; margin-top:18px;">
                <input type="email" id="newsEmail" placeholder="your@email.com" required>
                <button type="submit" class="btn-primary" style="background:#0f5244;">Subscribe <i class="fas fa-paper-plane"></i></button>
            </form>
            <div id="newsMsg" style="font-size:13px; margin-top:14px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display:flex; justify-content:space-between; flex-wrap:wrap; gap:28px;">
        <div><div class="logo" style="color:white; background:none; -webkit-background-clip: unset;">Nova<span style="color:#f2b84b;">.</span></div><p style="margin-top:12px; max-width:260px; font-size:0.85rem;">Modern e‑commerce with elegance & speed.</p></div>
        <div><h4 style="font-weight:600">Explore</h4><div style="margin-top:8px;">New arrivals<br>Best sellers<br>Gift cards</div></div>
        <div><h4 style="font-weight:600">Support</h4><div style="margin-top:8px;">FAQ<br>Returns<br>Contact</div></div>
    </div>
    <div class="container" style="text-align:center; margin-top: 44px; font-size:0.75rem;">© <span id="currentYear"></span> Nova — minimal concept store</div>
</footer>

<script>
    // ========== DATA ============
    const categoriesData = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
        { id: 'clothing', name: 'Apparel', icon: 'fa-shirt' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Sneakers', icon: 'fa-shoe-prints' },
        { id: 'access', name: 'Watches', icon: 'fa-clock' }
    ];

    const productsStore = [
        { id: 1, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 87, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: 2299, rating: 5, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Sony WH-1000XM5', price: 399, oldPrice: 499, rating: 5, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 4, title: 'Nike Dunk Low', price: 119, rating: 4.5, img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Nordic Chair', price: 249, oldPrice: 299, rating: 4, img: 'https://images.unsplash.com/photo-1503602642458-232111445657?auto=format&fit=crop&w=600&q=80', category: 'access' },
        { id: 6, title: 'Minimal Backpack', price: 79, rating: 4.7, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'clothing' },
        { id: 7, title: 'Galaxy Watch6', price: 289, oldPrice: 349, rating: 4, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'access' }
    ];

    let cartItemsCount = 0;
    function updateCartUI() { document.getElementById('cartCountDisplay').innerText = cartItemsCount; }

    function addToCartById(pid) {
        cartItemsCount++;
        updateCartUI();
        const btn = document.querySelector(`.add-cart-btn[data-pid='${pid}']`);
        if (btn) {
            const original = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            setTimeout(() => { btn.innerHTML = original; }, 1000);
        }
    }

    function renderCategoriesUI() {
        const container = document.getElementById('categoryGridModern');
        container.innerHTML = '';
        categoriesData.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-modern';
            card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><p style="font-size:12px; margin-top:6px;">shop now →</p>`;
            card.addEventListener('click', () => {
                document.getElementById('globalSearch').value = cat.name;
                filterProductsBySearch(cat.name);
                window.scrollTo({ top: document.querySelector('.product-grid').offsetTop - 100, behavior: 'smooth' });
            });
            container.appendChild(card);
        });
    }

    function filterProductsBySearch(query) {
        const term = query.trim().toLowerCase();
        if (!term) renderProductsList(productsStore);
        else {
            const filtered = productsStore.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
            renderProductsList(filtered);
        }
    }

    function renderProductsList(productsArray) {
        const grid = document.getElementById('productGridDynamic');
        grid.innerHTML = '';
        productsArray.forEach(prod => {
            const card = document.createElement('div');
            card.className = 'product-card';
            const stars = '★'.repeat(Math.floor(prod.rating)) + (prod.rating % 1 ? '½' : '');
            card.innerHTML = `
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${prod.title}</div>
                    <div class="price-block"><span class="current">$${prod.price}</span>${prod.oldPrice ? `<span class="old">$${prod.oldPrice}</span>` : ''}</div>
                    <div class="rating"><span style="color:#f2b84b;">${stars}</span> <span style="color:gray;">(${prod.reviews || 24})</span></div>
                    <button class="btn-add add-cart-btn" data-pid="${prod.id}"><i class="fas fa-shopping-cart"></i> Add to cart</button>
                </div>
            `;
            grid.appendChild(card);
        });
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const pid = parseInt(btn.getAttribute('data-pid'));
                addToCartById(pid);
            });
        });
    }

    // flash sale timer
    function initDealTimer() {
        const endTime = new Date();
        endTime.setDate(endTime.getDate() + 1);
        endTime.setHours(endTime.getHours() + 5, 0, 0);
        function update() {
            const diff = endTime - new Date();
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hrs = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hrs).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        update();
        setInterval(update, 1000);
    }

    // newsletter
    const newsForm = document.getElementById('newsSignup');
    const newsMsgDiv = document.getElementById('newsMsg');
    newsForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        if (!email.includes('@') || !email) {
            newsMsgDiv.innerHTML = '<span style="color:#b1624b;">Please enter valid email</span>';
        } else {
            newsMsgDiv.innerHTML = '<span style="color:#1f6e5c;">✨ Welcome to the club! Check your inbox.</span>';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => newsMsgDiv.innerHTML = '', 3000);
        }
    });

    // search events
    const searchField = document.getElementById('globalSearch');
    const searchBtnIcon = document.querySelector('.search-bar i');
    function triggerSearch() { filterProductsBySearch(searchField.value); }
    searchField.addEventListener('keyup', (e) => { if(e.key === 'Enter') triggerSearch(); });
    if(searchBtnIcon) searchBtnIcon.addEventListener('click', triggerSearch);

    // mobile menu toggle
    const mobileToggleBtn = document.getElementById('mobileMenuBtn');
    const mobilePanel = document.getElementById('mobileNavPanel');
    mobileToggleBtn.addEventListener('click', () => {
        mobilePanel.style.display = mobilePanel.style.display === 'none' ? 'flex' : 'none';
    });

    // Hero & misc buttons
    document.getElementById('heroShopBtn').addEventListener('click', () => {
        window.scrollTo({ top: document.getElementById('productGridDynamic').offsetTop - 80, behavior: 'smooth' });
    });
    document.getElementById('heroDealsBtn').addEventListener('click', () => {
        document.getElementById('deals-sale').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('flashBuyBtn').addEventListener('click', () => {
        cartItemsCount += 1;
        updateCartUI();
        alert('🔥 Flash deal added! (demo)');
    });
    const catLink = document.getElementById('catLinkRef');
    if(catLink) catLink.addEventListener('click', (e) => { e.preventDefault(); document.querySelector('.category-grid').scrollIntoView({ behavior: 'smooth' }); });

    // init all
    renderCategoriesUI();
    renderProductsList(productsStore);
    updateCartUI();
    initDealTimer();
    document.getElementById('currentYear').innerText = new Date().getFullYear();
    // close mobile if click outside? fine
    window.addEventListener('resize', () => { if(window.innerWidth > 850) mobilePanel.style.display = 'none'; });
</script>
</body>
</html>
