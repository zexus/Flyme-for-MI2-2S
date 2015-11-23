.class Lcom/android/settings/ey;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/settings/ey;->rJ:Lcom/android/settings/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 443
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 444
    return-void
.end method
