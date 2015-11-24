.class Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$1;
.super Ljava/lang/Object;
.source "MsdInstallActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$1;->SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$1;->SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;->b(Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity$1;->SH:Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;

    invoke-static {v1}, Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;->a(Lcom/android/settings_ext/deviceinfo/MsdInstallActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    return-void
.end method
