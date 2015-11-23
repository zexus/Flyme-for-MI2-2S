.class Lcom/android/settings/bq;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gT:Landroid/widget/NumberPicker;

.field final synthetic gU:Lcom/android/settings/b/f;

.field final synthetic gV:Landroid/net/NetworkTemplate;

.field final synthetic gW:Lcom/android/settings/DataUsageSummary;

.field final synthetic gX:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/b/f;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/android/settings/bq;->gX:Lcom/android/settings/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/android/settings/bq;->gT:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/settings/bq;->gU:Lcom/android/settings/b/f;

    iput-object p4, p0, Lcom/android/settings/bq;->gV:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/settings/bq;->gW:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/settings/bq;->gT:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 1974
    iget-object v0, p0, Lcom/android/settings/bq;->gT:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1975
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1976
    iget-object v2, p0, Lcom/android/settings/bq;->gU:Lcom/android/settings/b/f;

    iget-object v3, p0, Lcom/android/settings/bq;->gV:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/b/f;->a(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 1977
    iget-object v0, p0, Lcom/android/settings/bq;->gW:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->b(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1978
    return-void
.end method
