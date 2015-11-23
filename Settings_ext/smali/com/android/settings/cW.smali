.class Lcom/android/settings/cW;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# instance fields
.field final synthetic od:Landroid/service/persistentdata/PersistentDataBlockManager;

.field final synthetic oe:Landroid/app/ProgressDialog;

.field final synthetic of:I

.field final synthetic og:Lcom/android/settings/cV;


# direct methods
.method constructor <init>(Lcom/android/settings/cV;Landroid/service/persistentdata/PersistentDataBlockManager;Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/cW;->og:Lcom/android/settings/cV;

    iput-object p2, p0, Lcom/android/settings/cW;->od:Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object p3, p0, Lcom/android/settings/cW;->oe:Landroid/app/ProgressDialog;

    iput p4, p0, Lcom/android/settings/cW;->of:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/cW;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/cW;->od:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/cW;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/cW;->oe:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/cW;->og:Lcom/android/settings/cV;

    iget-object v0, v0, Lcom/android/settings/cV;->oc:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/cW;->of:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/cW;->og:Lcom/android/settings/cV;

    iget-object v0, v0, Lcom/android/settings/cV;->oc:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->a(Lcom/android/settings/MasterClearConfirm;)V

    .line 86
    return-void
.end method
