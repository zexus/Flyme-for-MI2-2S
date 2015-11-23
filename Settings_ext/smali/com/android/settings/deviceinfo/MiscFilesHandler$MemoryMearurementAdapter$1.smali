.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic RW:I

.field final synthetic RX:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic xv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->RX:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->xv:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->RW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->xv:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->RW:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 262
    return-void
.end method
