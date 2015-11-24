.class Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic RW:I

.field final synthetic RX:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic RY:Lcom/android/settings_ext/deviceinfo/FileItemInfoLayout;

.field final synthetic xv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings_ext/deviceinfo/FileItemInfoLayout;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->RX:Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->xv:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->RW:I

    iput-object p4, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->RY:Lcom/android/settings_ext/deviceinfo/FileItemInfoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->xv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->xv:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->RW:I

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->RY:Lcom/android/settings_ext/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 281
    :cond_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
