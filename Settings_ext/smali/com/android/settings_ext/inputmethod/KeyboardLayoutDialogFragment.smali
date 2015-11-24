.class public Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;
.super Landroid/app/DialogFragment;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private abF:Landroid/hardware/input/InputDeviceIdentifier;

.field private abG:I

.field private abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

.field private tO:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    .line 64
    iput-object p1, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->pP()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->bP(I)V

    return-void
.end method

.method private bP(I)V
    .locals 3

    .prologue
    .line 159
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    .line 161
    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->tO:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 167
    :cond_1
    return-void
.end method

.method private pP()V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {v0, v1}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;->b(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 150
    return-void
.end method

.method private pQ()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 212
    if-eqz v0, :cond_0

    .line 215
    sget v1, Lmiui/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_0
    return-void

    .line 216
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Loader;Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget-object v1, p2, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->addAll(Ljava/util/Collection;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget v1, p2, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abK:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->bQ(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p2, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abK:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->pQ()V

    .line 184
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    const-string v0, "input"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->tO:Landroid/hardware/input/InputManager;

    .line 73
    new-instance v0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-direct {v0, v1}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    .line 74
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v0, "inputDeviceIdentifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 85
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0905be

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0905bf

    new-instance v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$2;-><init>(Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    const/4 v3, -0x1

    new-instance v4, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$1;-><init>(Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f04006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->pQ()V

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;

    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    .prologue
    .line 198
    iget v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    if-ne p1, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 201
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    if-ne p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 208
    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->a(Landroid/content/Loader;Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abH:Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 189
    invoke-direct {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->pQ()V

    .line 190
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->tO:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    .line 138
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->tO:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->tO:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abG:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "inputDeviceIdentifier"

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    return-void
.end method
