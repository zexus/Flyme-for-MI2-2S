.class Lcom/android/settings/print/l;
.super Landroid/os/Handler;
.source "PrintSettingsFragment.java"


# instance fields
.field final synthetic ahs:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/print/l;->ahs:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/print/l;->ahs:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->a(Lcom/android/settings/print/PrintSettingsFragment;)V

    .line 111
    return-void
.end method
