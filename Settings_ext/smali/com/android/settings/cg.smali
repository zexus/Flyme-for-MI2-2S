.class Lcom/android/settings/cg;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic kv:Landroid/view/View;

.field final synthetic kw:Lcom/android/settings/ce;


# direct methods
.method constructor <init>(Lcom/android/settings/ce;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/settings/cg;->kw:Lcom/android/settings/ce;

    iput-object p2, p0, Lcom/android/settings/cg;->kv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/cg;->kw:Lcom/android/settings/ce;

    iget-object v0, v0, Lcom/android/settings/ce;->kt:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/bX;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/cg;->kv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bY;

    invoke-virtual {v1, v0}, Lcom/android/settings/bX;->a(Lcom/android/settings/bY;)V

    .line 327
    return-void
.end method
