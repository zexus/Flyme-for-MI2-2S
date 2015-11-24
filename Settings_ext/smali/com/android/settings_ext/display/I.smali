.class Lcom/android/settings_ext/display/I;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Wg:Lcom/android/settings_ext/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/ScreenTimeoutDialogActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ext/display/I;->Wg:Lcom/android/settings_ext/display/ScreenTimeoutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/display/I;->Wg:Lcom/android/settings_ext/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings_ext/display/ScreenTimeoutDialogActivity;->finish()V

    .line 89
    return-void
.end method
