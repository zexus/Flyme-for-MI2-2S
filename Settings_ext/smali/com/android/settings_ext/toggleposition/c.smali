.class Lcom/android/settings_ext/toggleposition/c;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic akI:Lcom/android/settings_ext/toggleposition/DragGridView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/toggleposition/DragGridView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/toggleposition/DragGridView;->a(Lcom/android/settings_ext/toggleposition/DragGridView;Z)Z

    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-static {v0}, Lcom/android/settings_ext/toggleposition/DragGridView;->a(Lcom/android/settings_ext/toggleposition/DragGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-static {v0}, Lcom/android/settings_ext/toggleposition/DragGridView;->b(Lcom/android/settings_ext/toggleposition/DragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    iget-object v1, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-static {v1}, Lcom/android/settings_ext/toggleposition/DragGridView;->c(Lcom/android/settings_ext/toggleposition/DragGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-static {v2}, Lcom/android/settings_ext/toggleposition/DragGridView;->d(Lcom/android/settings_ext/toggleposition/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ext/toggleposition/c;->akI:Lcom/android/settings_ext/toggleposition/DragGridView;

    invoke-static {v3}, Lcom/android/settings_ext/toggleposition/DragGridView;->e(Lcom/android/settings_ext/toggleposition/DragGridView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ext/toggleposition/DragGridView;->a(Lcom/android/settings_ext/toggleposition/DragGridView;Landroid/graphics/Bitmap;II)V

    .line 154
    return-void
.end method