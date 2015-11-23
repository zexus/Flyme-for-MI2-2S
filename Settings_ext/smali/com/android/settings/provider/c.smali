.class final Lcom/android/settings/provider/c;
.super Ljava/lang/Thread;
.source "MiuiSettingsUtil.java"


# instance fields
.field final synthetic ahA:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/provider/c;->ahA:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/settings/provider/c;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/provider/c;->ahA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/provider/d;

    .line 138
    iget-object v2, p0, Lcom/android/settings/provider/c;->val$context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/provider/d;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/provider/d;->ahB:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/provider/d;->index:I

    iget v0, v0, Lcom/android/settings/provider/d;->count:I

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/settings/provider/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method
