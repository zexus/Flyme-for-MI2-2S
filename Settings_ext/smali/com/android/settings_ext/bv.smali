.class Lcom/android/settings_ext/bv;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gU:Lcom/android/settings_ext/b/f;

.field final synthetic gV:Landroid/net/NetworkTemplate;

.field final synthetic gW:Lcom/android/settings_ext/DataUsageSummary;

.field final synthetic hb:Landroid/widget/NumberPicker;

.field final synthetic hf:Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ext/b/f;Landroid/net/NetworkTemplate;Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/android/settings_ext/bv;->hf:Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/android/settings_ext/bv;->hb:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings_ext/bv;->gU:Lcom/android/settings_ext/b/f;

    iput-object p4, p0, Lcom/android/settings_ext/bv;->gV:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings_ext/bv;->gW:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/settings_ext/bv;->hb:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2038
    iget-object v0, p0, Lcom/android/settings_ext/bv;->hb:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    .line 2039
    iget-object v2, p0, Lcom/android/settings_ext/bv;->gU:Lcom/android/settings_ext/b/f;

    iget-object v3, p0, Lcom/android/settings_ext/bv;->gV:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings_ext/b/f;->a(Landroid/net/NetworkTemplate;J)V

    .line 2040
    iget-object v0, p0, Lcom/android/settings_ext/bv;->gW:Lcom/android/settings_ext/DataUsageSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->b(Lcom/android/settings_ext/DataUsageSummary;Z)V

    .line 2041
    return-void
.end method
