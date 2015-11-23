.class Lcom/android/settings_ext/ch;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic kv:Landroid/view/View;

.field final synthetic kw:Lcom/android/settings_ext/ce;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ce;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings_ext/ch;->kw:Lcom/android/settings_ext/ce;

    iput-object p2, p0, Lcom/android/settings_ext/ch;->kv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 339
    iget-object v1, p0, Lcom/android/settings_ext/ch;->kw:Lcom/android/settings_ext/ce;

    iget-object v0, p0, Lcom/android/settings_ext/ch;->kv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bY;

    invoke-static {v1, v0}, Lcom/android/settings_ext/ce;->a(Lcom/android/settings_ext/ce;Lcom/android/settings_ext/bY;)V

    .line 340
    return-void
.end method
