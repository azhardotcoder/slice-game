.class public Lcom/slice/rewards/game/JSInterface;
.super Ljava/lang/Object;
.source "JSInterface.java"

# fields
.field private context:Landroid/content/Context;

# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/slice/rewards/game/JSInterface;->context:Landroid/content/Context;
    return-void
.end method

# virtual methods
.method public handleMessage(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/slice/rewards/game/JSInterface;->context:Landroid/content/Context;
    if-eqz v1, :cond_0
    const-string v2, "vibrator"
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/os/Vibrator;
    if-eqz v0, :cond_0
    const-wide/16 v2, 0x28
    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :cond_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
