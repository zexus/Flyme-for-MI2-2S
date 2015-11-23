.class Lcom/android/settings/cf;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic kv:Landroid/view/View;

.field final synthetic kw:Lcom/android/settings/ce;


# direct methods
.method constructor <init>(Lcom/android/settings/ce;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings/cf;->kw:Lcom/android/settings/ce;

    iput-object p2, p0, Lcom/android/settings/cf;->kv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/cf;->kv:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 310
    const/4 v0, 0x0

    return v0
.end method
