.class Lcom/android/settings/cd;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic kt:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/cd;->kt:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lcom/android/settings/cd;->kt:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/bX;

    move-result-object v3

    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings/bX;->u(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/cd;->kt:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/bX;

    move-result-object v0

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settings/bX;->v(Z)V

    .line 206
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 207
    return-void

    :cond_3
    move v0, v1

    .line 204
    goto :goto_0
.end method
