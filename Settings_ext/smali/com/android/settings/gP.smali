.class Lcom/android/settings/gP;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic yJ:Lcom/android/settings/gN;


# direct methods
.method constructor <init>(Lcom/android/settings/gN;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/settings/gP;->yJ:Lcom/android/settings/gN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 678
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 679
    return-void
.end method
