.class Lcom/android/settings/eB;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rM:Lcom/android/settings/ez;


# direct methods
.method constructor <init>(Lcom/android/settings/ez;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/settings/eB;->rM:Lcom/android/settings/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 469
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 470
    return-void
.end method
