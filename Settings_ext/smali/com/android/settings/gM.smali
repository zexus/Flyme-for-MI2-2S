.class Lcom/android/settings_ext/gM;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/settings_ext/gM;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 649
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 650
    return-void
.end method
