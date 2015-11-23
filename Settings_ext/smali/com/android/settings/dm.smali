.class Lcom/android/settings_ext/dm;
.super Ljava/lang/Object;
.source "MiuiAppPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic ou:Lcom/android/settings_ext/MiuiAppPicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiAppPicker;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ext/dm;->ou:Lcom/android/settings_ext/MiuiAppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ext/dm;->ou:Lcom/android/settings_ext/MiuiAppPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiAppPicker;->a(Lcom/android/settings_ext/MiuiAppPicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/dm;->ou:Lcom/android/settings_ext/MiuiAppPicker;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiAppPicker;->finish()V

    .line 66
    return-void
.end method
