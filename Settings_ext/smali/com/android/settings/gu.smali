.class Lcom/android/settings/gu;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mv:Landroid/graphics/drawable/Drawable;

.field final synthetic val$position:I

.field final synthetic xu:Lcom/android/settings/SettingsPreferenceFragment;

.field final synthetic xv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/gu;->xu:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/gu;->xv:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/gu;->val$position:I

    iput-object p4, p0, Lcom/android/settings/gu;->mv:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/gu;->xv:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/gu;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/gu;->xv:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/gv;

    invoke-direct {v1, p0}, Lcom/android/settings/gv;-><init>(Lcom/android/settings/gu;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    return-void
.end method
