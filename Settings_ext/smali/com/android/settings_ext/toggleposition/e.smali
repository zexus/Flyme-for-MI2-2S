.class Lcom/android/settings_ext/toggleposition/e;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic akI:Lcom/android/settings_ext/toggleposition/DragGridView;

.field final synthetic akJ:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/toggleposition/DragGridView;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/settings_ext/toggleposition/e;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    iput-object p2, p0, Lcom/android/settings_ext/toggleposition/e;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/android/settings_ext/toggleposition/e;->akJ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/e;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/e;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    iget-object v1, p0, Lcom/android/settings_ext/toggleposition/e;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-static {v1}, Lcom/android/settings_ext/toggleposition/DragGridView;->h(Lcom/android/settings_ext/toggleposition/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/android/settings_ext/toggleposition/e;->akJ:I

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/toggleposition/DragGridView;->a(Lcom/android/settings_ext/toggleposition/DragGridView;II)V

    .line 471
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/e;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    iget v1, p0, Lcom/android/settings_ext/toggleposition/e;->akJ:I

    invoke-static {v0, v1}, Lcom/android/settings_ext/toggleposition/DragGridView;->a(Lcom/android/settings_ext/toggleposition/DragGridView;I)I

    .line 472
    const/4 v0, 0x1

    return v0
.end method
