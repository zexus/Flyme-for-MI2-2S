.class Lcom/android/settings_ext/aJ;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fb:Lcom/android/settings_ext/CryptKeeper;

.field final synthetic fe:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CryptKeeper;Z)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/settings_ext/aJ;->fb:Lcom/android/settings_ext/CryptKeeper;

    iput-boolean p2, p0, Lcom/android/settings_ext/aJ;->fe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const-string v1, "android.intent.extra.REASON"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CryptKeeper.showFactoryReset() corrupt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ext/aJ;->fe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    iget-object v1, p0, Lcom/android/settings_ext/aJ;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    return-void
.end method
