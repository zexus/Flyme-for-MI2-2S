.class Lcom/android/settings/wifi/bl;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aya:Lcom/android/settings/wifi/bh;

.field final synthetic ayb:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/bh;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/wifi/bl;->aya:Lcom/android/settings/wifi/bh;

    iput-object p2, p0, Lcom/android/settings/wifi/bl;->val$view:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/settings/wifi/bl;->ayb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/bl;->val$view:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/wifi/bl;->ayb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    return-void
.end method
