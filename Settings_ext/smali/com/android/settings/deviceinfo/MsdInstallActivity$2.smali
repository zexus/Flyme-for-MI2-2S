.class Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$2;
.super Ljava/lang/Object;
.source "MsdInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$2;->SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$2;->SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;->setResult(I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$2;->SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;->finish()V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$2;->SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    const/4 v1, 0x0

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;->overridePendingTransition(II)V

    .line 144
    return-void
.end method
