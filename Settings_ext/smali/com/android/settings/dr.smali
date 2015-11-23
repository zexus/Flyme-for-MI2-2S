.class Lcom/android/settings/dr;
.super Ljava/lang/Object;
.source "MiuiBackgroundDataEnable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ow:Lcom/android/settings/dq;


# direct methods
.method constructor <init>(Lcom/android/settings/dq;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/dr;->ow:Lcom/android/settings/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/dr;->ow:Lcom/android/settings/dq;

    invoke-static {v0}, Lcom/android/settings/dq;->a(Lcom/android/settings/dq;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 80
    return-void
.end method
