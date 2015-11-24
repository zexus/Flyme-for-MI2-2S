.class Lcom/android/settings_ext/sound/m;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ajw:Lcom/android/settings_ext/sound/l;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/sound/l;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings_ext/sound/m;->ajw:Lcom/android/settings_ext/sound/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/settings_ext/sound/m;->ajw:Lcom/android/settings_ext/sound/l;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/sound/l;->bp(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/settings_ext/sound/m;->ajw:Lcom/android/settings_ext/sound/l;

    iget-object v1, v1, Lcom/android/settings_ext/sound/l;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/sound/m;->ajw:Lcom/android/settings_ext/sound/l;

    iget-object v2, v2, Lcom/android/settings_ext/sound/l;->ajq:Lcom/android/settings_ext/sound/e;

    invoke-static {v2}, Lcom/android/settings_ext/sound/e;->b(Lcom/android/settings_ext/sound/e;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/settings_ext/sound/q;->a(Landroid/content/Context;ILjava/lang/String;)Z

    .line 243
    iget-object v0, p0, Lcom/android/settings_ext/sound/m;->ajw:Lcom/android/settings_ext/sound/l;

    invoke-virtual {v0}, Lcom/android/settings_ext/sound/l;->notifyDataSetChanged()V

    .line 244
    return-void
.end method
