.class Lcom/android/settings/wifi/aX;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic axt:Lcom/android/settings/wifi/WpsDialog;

.field final synthetic axv:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field final synthetic axw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/aX;->axv:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object p3, p0, Lcom/android/settings/wifi/aX;->axw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 238
    sget-object v0, Lcom/android/settings/wifi/aY;->axx:[I

    iget-object v1, p0, Lcom/android/settings/wifi/aX;->axv:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->g(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/aX;->axw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->b(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->d(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->e(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09054e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->b(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->d(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->f(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->f(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/aX;->axt:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
