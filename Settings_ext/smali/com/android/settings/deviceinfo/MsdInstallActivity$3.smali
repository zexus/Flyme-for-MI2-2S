.class Lcom/android/settings/deviceinfo/MsdInstallActivity$3;
.super Ljava/lang/Object;
.source "MsdInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->c(Lcom/android/settings/deviceinfo/MsdInstallActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->a(Lcom/android/settings/deviceinfo/MsdInstallActivity;I)I

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->d(Lcom/android/settings/deviceinfo/MsdInstallActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->a(Lcom/android/settings/deviceinfo/MsdInstallActivity;I)I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->e(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    .line 155
    return-void
.end method
