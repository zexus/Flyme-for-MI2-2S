.class Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;
.super Landroid/text/style/CharacterStyle;
.source "MsdInstallActivity.java"


# instance fields
.field final synthetic SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;->SH:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 271
    return-void
.end method
