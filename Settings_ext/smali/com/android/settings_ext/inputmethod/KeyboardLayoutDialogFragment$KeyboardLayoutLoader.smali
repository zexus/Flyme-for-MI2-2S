.class final Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "KeyboardLayoutDialogFragment.java"


# instance fields
.field private final abF:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 310
    iput-object p2, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    .line 311
    return-void
.end method


# virtual methods
.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->pR()Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->forceLoad()V

    .line 351
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->cancelLoad()Z

    .line 357
    return-void
.end method

.method public pR()Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 315
    new-instance v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-direct {v3}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 317
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v4

    .line 319
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 320
    invoke-virtual {v0, v6}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 321
    if-eqz v6, :cond_0

    .line 322
    iget-object v7, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v1, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 327
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->abF:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 329
    if-eqz v4, :cond_2

    .line 330
    iget-object v0, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 331
    :goto_1
    if-ge v1, v5, :cond_2

    .line 332
    iget-object v0, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    iput v1, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abK:I

    .line 340
    :cond_2
    iget-object v0, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iput v2, v3, Lcom/android/settings_ext/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abK:I

    .line 344
    :cond_3
    return-object v3

    .line 331
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
