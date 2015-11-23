.class Lcom/android/settings/display/J;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic Wg:Lcom/android/settings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/display/J;->Wg:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/display/J;->Wg:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->finish()V

    .line 96
    return-void
.end method
