.class public Lcom/slice/rewards/game/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# fields
.field private webView:Landroid/webkit/WebView;

# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method

# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1
    const/16 v3, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/slice/rewards/game/MainActivity;->requestWindowFeature(I)Z
    invoke-virtual {p0}, Lcom/slice/rewards/game/MainActivity;->getWindow()Landroid/view/Window;
    move-result-object v1
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/webkit/WebView;
    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    const/high16 v2, -0x1000000
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    iget-object v1, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    new-instance v2, Landroid/webkit/WebViewClient;
    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    new-instance v2, Landroid/webkit/WebChromeClient;
    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    new-instance v2, Lcom/slice/rewards/game/JSInterface;
    invoke-direct {v2, p0}, Lcom/slice/rewards/game/JSInterface;-><init>(Landroid/content/Context;)V
    const-string v3, "AndroidInterface"
    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    invoke-virtual {p0, v1}, Lcom/slice/rewards/game/MainActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    const-string v2, "file:///android_asset/game/index.html"
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z
    move-result v0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slice/rewards/game/MainActivity;->webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    return-void
.end method
