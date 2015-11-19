.class public Lmiui/yellowpage/YellowPage;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPage$Social;,
        Lmiui/yellowpage/YellowPage$Provider;,
        Lmiui/yellowpage/YellowPage$TagSocial;,
        Lmiui/yellowpage/YellowPage$TagCallMenuNIvr;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPage"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mAuthIconName:Ljava/lang/String;

.field private mBrief:Ljava/lang/String;

.field private mCatId:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mExtraData:Ljava/lang/String;

.field private mGallery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHotCatId:Ljava/lang/String;

.field private mHotSort:I

.field private mIsHot:Z

.field private mIsMasterPage:Z

.field private mIsPreset:Z

.field private mLatitude:Ljava/lang/String;

.field private mLocId:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mMiId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoUrl:Ljava/lang/String;

.field private mPinyin:Ljava/lang/String;

.field private mProviderId:I

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private mSlogan:Ljava/lang/String;

.field private mSocials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceId:Ljava/lang/String;

.field private mSourceUrl:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mYid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    .line 99
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 2
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 608
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmiui/yellowpage/YellowPage;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 612
    :goto_0
    return-object v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 612
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage;
    .locals 62
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 618
    :try_start_0
    const-string v12, "sid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 619
    .local v6, "yid":J
    const-string v12, "sName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 622
    .local v8, "name":Ljava/lang/String;
    const-string v12, "provider"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 623
    .local v13, "pid":I
    const-string v12, "sName_py"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 624
    .local v16, "pinyin":Ljava/lang/String;
    const-string v12, "aliasName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 625
    .local v19, "alias":Ljava/lang/String;
    const-string v12, "address"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 626
    .local v4, "address":Ljava/lang/String;
    const-string v12, "site"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 627
    .local v57, "url":Ljava/lang/String;
    const-string v12, "sourceUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 628
    .local v53, "sourceUrl":Ljava/lang/String;
    const-string v12, "sourceId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 629
    .local v52, "sourceId":Ljava/lang/String;
    const-string v12, "shInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 630
    .local v23, "brief":Ljava/lang/String;
    const-string v12, "hotCatId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 631
    .local v28, "hotCatId":Ljava/lang/String;
    const-string v12, "hotSort"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v29

    .line 632
    .local v29, "hotSort":I
    const-string v12, "catId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 633
    .local v24, "catId":Ljava/lang/String;
    const-string v12, "locId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 634
    .local v35, "locId":Ljava/lang/String;
    const-string v12, "longitude"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 635
    .local v36, "longitude":Ljava/lang/String;
    const-string v12, "latitude"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 636
    .local v34, "latitude":Ljava/lang/String;
    const-string v12, "miid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 637
    .local v37, "miId":Ljava/lang/String;
    const-string v12, "miSubId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 638
    .local v38, "miSudId":Ljava/lang/String;
    const-string v12, "slogan"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 639
    .local v47, "slogan":Ljava/lang/String;
    const-string v12, "authIcon"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 641
    .local v22, "authIcon":Ljava/lang/String;
    const-string v12, "sType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const/16 v60, 0x2

    move/from16 v0, v60

    if-ne v12, v0, :cond_1

    const/16 v32, 0x1

    .line 642
    .local v32, "isMasterPage":Z
    :goto_0
    const-string v12, "hot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const/16 v60, 0x1

    move/from16 v0, v60

    if-ne v12, v0, :cond_2

    const/16 v31, 0x1

    .line 643
    .local v31, "isHotPage":Z
    :goto_1
    const-string v12, "buildIn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const/16 v60, 0x1

    move/from16 v0, v60

    if-ne v12, v0, :cond_3

    const/16 v33, 0x1

    .line 644
    .local v33, "isPreset":Z
    :goto_2
    const-string v12, "callMenu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    .line 647
    .local v18, "hasCallMenu":Z
    const-string v12, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v39

    .line 648
    .local v39, "phoneArray":Lorg/json/JSONArray;
    const/16 v41, 0x0

    .line 649
    .local v41, "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    if-eqz v39, :cond_5

    .line 650
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_3
    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONArray;->length()I

    move-result v12

    move/from16 v0, v30

    if-ge v0, v12, :cond_5

    .line 651
    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v40

    .line 652
    .local v40, "phoneJson":Lorg/json/JSONObject;
    const-string v12, "phone"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 653
    .local v10, "number":Ljava/lang/String;
    const-string v12, "norPhone"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 654
    .local v11, "normalizedNumber":Ljava/lang/String;
    const-string v12, "contactName"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 655
    .local v9, "tag":Ljava/lang/String;
    const-string v12, "contactName_py"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 656
    .local v17, "tagPinyin":Ljava/lang/String;
    const-string v12, "t9rank"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 657
    .local v54, "t9Rank":J
    const-string v12, "atdCatId"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    .line 658
    .local v21, "atdCatId":I
    const-string v12, "count"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 659
    .local v14, "count":I
    const-string v12, "provider"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    .line 660
    .local v20, "antispamProviderId":I
    const-string v12, "flag"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v27

    .line 661
    .local v27, "flag":I
    const-string v12, "hide"

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v15, 0x1

    .line 662
    .local v15, "visible":Z
    :goto_4
    if-nez v41, :cond_0

    .line 663
    new-instance v41, Ljava/util/ArrayList;

    .end local v41    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .restart local v41    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    :cond_0
    new-instance v5, Lmiui/yellowpage/YellowPagePhone;

    const/4 v12, 0x1

    invoke-direct/range {v5 .. v18}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 670
    .local v5, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Lmiui/yellowpage/YellowPagePhone;->setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;

    .line 671
    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Lmiui/yellowpage/YellowPagePhone;->setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    .line 672
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lmiui/yellowpage/YellowPagePhone;->setCid(I)Lmiui/yellowpage/YellowPagePhone;

    .line 673
    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lmiui/yellowpage/YellowPagePhone;->setFlag(I)Lmiui/yellowpage/YellowPagePhone;

    .line 674
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lmiui/yellowpage/YellowPagePhone;->setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;

    .line 675
    move-object/from16 v0, v41

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_3

    .line 641
    .end local v5    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "normalizedNumber":Ljava/lang/String;
    .end local v14    # "count":I
    .end local v15    # "visible":Z
    .end local v17    # "tagPinyin":Ljava/lang/String;
    .end local v18    # "hasCallMenu":Z
    .end local v20    # "antispamProviderId":I
    .end local v21    # "atdCatId":I
    .end local v27    # "flag":I
    .end local v30    # "i":I
    .end local v31    # "isHotPage":Z
    .end local v32    # "isMasterPage":Z
    .end local v33    # "isPreset":Z
    .end local v39    # "phoneArray":Lorg/json/JSONArray;
    .end local v40    # "phoneJson":Lorg/json/JSONObject;
    .end local v41    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v54    # "t9Rank":J
    :cond_1
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 642
    .restart local v32    # "isMasterPage":Z
    :cond_2
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 643
    .restart local v31    # "isHotPage":Z
    :cond_3
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 661
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "number":Ljava/lang/String;
    .restart local v11    # "normalizedNumber":Ljava/lang/String;
    .restart local v14    # "count":I
    .restart local v17    # "tagPinyin":Ljava/lang/String;
    .restart local v18    # "hasCallMenu":Z
    .restart local v20    # "antispamProviderId":I
    .restart local v21    # "atdCatId":I
    .restart local v27    # "flag":I
    .restart local v30    # "i":I
    .restart local v33    # "isPreset":Z
    .restart local v39    # "phoneArray":Lorg/json/JSONArray;
    .restart local v40    # "phoneJson":Lorg/json/JSONObject;
    .restart local v41    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .restart local v54    # "t9Rank":J
    :cond_4
    const/4 v15, 0x0

    goto :goto_4

    .line 680
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "normalizedNumber":Ljava/lang/String;
    .end local v14    # "count":I
    .end local v17    # "tagPinyin":Ljava/lang/String;
    .end local v20    # "antispamProviderId":I
    .end local v21    # "atdCatId":I
    .end local v27    # "flag":I
    .end local v30    # "i":I
    .end local v40    # "phoneJson":Lorg/json/JSONObject;
    .end local v54    # "t9Rank":J
    :cond_5
    const-string v12, "snsInfo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v49

    .line 681
    .local v49, "socialArray":Lorg/json/JSONArray;
    const/16 v51, 0x0

    .line 682
    .local v51, "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    if-eqz v49, :cond_6

    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 683
    new-instance v51, Ljava/util/ArrayList;

    .end local v51    # "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .restart local v51    # "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_5
    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONArray;->length()I

    move-result v12

    move/from16 v0, v30

    if-ge v0, v12, :cond_6

    .line 685
    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v50

    .line 686
    .local v50, "socialJson":Lorg/json/JSONObject;
    const-string v12, "url"

    move-object/from16 v0, v50

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 687
    .local v59, "ypUrl":Ljava/lang/String;
    const-string v12, "name"

    move-object/from16 v0, v50

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 688
    .local v58, "ypName":Ljava/lang/String;
    const-string v12, "provider"

    move-object/from16 v0, v50

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v45

    .line 689
    .local v45, "providerId":I
    new-instance v48, Lmiui/yellowpage/YellowPage$Social;

    move-object/from16 v0, v48

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    move/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lmiui/yellowpage/YellowPage$Social;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 690
    .local v48, "social":Lmiui/yellowpage/YellowPage$Social;
    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 695
    .end local v30    # "i":I
    .end local v45    # "providerId":I
    .end local v48    # "social":Lmiui/yellowpage/YellowPage$Social;
    .end local v50    # "socialJson":Lorg/json/JSONObject;
    .end local v58    # "ypName":Ljava/lang/String;
    .end local v59    # "ypUrl":Ljava/lang/String;
    :cond_6
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v46, "providers":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    const-string v12, "providerList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v44

    .line 697
    .local v44, "providerArray":Lorg/json/JSONArray;
    if-eqz v44, :cond_8

    .line 698
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_6
    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v12

    move/from16 v0, v30

    if-ge v0, v12, :cond_8

    .line 699
    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lmiui/yellowpage/YellowPage$Provider;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v43

    .line 700
    .local v43, "provider":Lmiui/yellowpage/YellowPage$Provider;
    if-eqz v43, :cond_7

    .line 701
    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 706
    .end local v30    # "i":I
    .end local v43    # "provider":Lmiui/yellowpage/YellowPage$Provider;
    :cond_8
    const-string v12, "photo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 707
    .local v42, "photoUrl":Ljava/lang/String;
    const-string v12, "thumbnail"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 709
    .local v56, "thumbnailUrl":Ljava/lang/String;
    const-string v12, "extraData"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 711
    .local v26, "extraData":Ljava/lang/String;
    new-instance v12, Lmiui/yellowpage/YellowPage;

    invoke-direct {v12}, Lmiui/yellowpage/YellowPage;-><init>()V

    invoke-virtual {v12, v6, v7}, Lmiui/yellowpage/YellowPage;->setId(J)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    invoke-virtual {v12, v8}, Lmiui/yellowpage/YellowPage;->setName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setPinyin(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setBrief(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setAlias(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    invoke-virtual {v12, v4}, Lmiui/yellowpage/YellowPage;->setAddress(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v41

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setPhones(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setSocials(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v56

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setThumbnailName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setPhotoName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    invoke-virtual {v12, v13}, Lmiui/yellowpage/YellowPage;->setProviderId(I)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v57

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v53

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v52

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setSourceId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setIsMasterPage(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setIsPreset(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setIsHot(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setHotCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setHotSort(I)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setLocId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setLongitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setLatitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, v60

    invoke-direct {v12, v0}, Lmiui/yellowpage/YellowPage;->setContent(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v47

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setProviderList(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v60

    if-eqz v60, :cond_9

    .end local v37    # "miId":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setMiId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setAuthIconName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lmiui/yellowpage/YellowPage;->setExtraData(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v12

    .line 743
    .end local v4    # "address":Ljava/lang/String;
    .end local v6    # "yid":J
    .end local v8    # "name":Ljava/lang/String;
    .end local v13    # "pid":I
    .end local v16    # "pinyin":Ljava/lang/String;
    .end local v18    # "hasCallMenu":Z
    .end local v19    # "alias":Ljava/lang/String;
    .end local v22    # "authIcon":Ljava/lang/String;
    .end local v23    # "brief":Ljava/lang/String;
    .end local v24    # "catId":Ljava/lang/String;
    .end local v26    # "extraData":Ljava/lang/String;
    .end local v28    # "hotCatId":Ljava/lang/String;
    .end local v29    # "hotSort":I
    .end local v31    # "isHotPage":Z
    .end local v32    # "isMasterPage":Z
    .end local v33    # "isPreset":Z
    .end local v34    # "latitude":Ljava/lang/String;
    .end local v35    # "locId":Ljava/lang/String;
    .end local v36    # "longitude":Ljava/lang/String;
    .end local v38    # "miSudId":Ljava/lang/String;
    .end local v39    # "phoneArray":Lorg/json/JSONArray;
    .end local v41    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v42    # "photoUrl":Ljava/lang/String;
    .end local v44    # "providerArray":Lorg/json/JSONArray;
    .end local v46    # "providers":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    .end local v47    # "slogan":Ljava/lang/String;
    .end local v49    # "socialArray":Lorg/json/JSONArray;
    .end local v51    # "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    .end local v52    # "sourceId":Ljava/lang/String;
    .end local v53    # "sourceUrl":Ljava/lang/String;
    .end local v56    # "thumbnailUrl":Ljava/lang/String;
    .end local v57    # "url":Ljava/lang/String;
    :goto_8
    return-object v12

    .line 711
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v6    # "yid":J
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v13    # "pid":I
    .restart local v16    # "pinyin":Ljava/lang/String;
    .restart local v18    # "hasCallMenu":Z
    .restart local v19    # "alias":Ljava/lang/String;
    .restart local v22    # "authIcon":Ljava/lang/String;
    .restart local v23    # "brief":Ljava/lang/String;
    .restart local v24    # "catId":Ljava/lang/String;
    .restart local v26    # "extraData":Ljava/lang/String;
    .restart local v28    # "hotCatId":Ljava/lang/String;
    .restart local v29    # "hotSort":I
    .restart local v31    # "isHotPage":Z
    .restart local v32    # "isMasterPage":Z
    .restart local v33    # "isPreset":Z
    .restart local v34    # "latitude":Ljava/lang/String;
    .restart local v35    # "locId":Ljava/lang/String;
    .restart local v36    # "longitude":Ljava/lang/String;
    .restart local v37    # "miId":Ljava/lang/String;
    .restart local v38    # "miSudId":Ljava/lang/String;
    .restart local v39    # "phoneArray":Lorg/json/JSONArray;
    .restart local v41    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .restart local v42    # "photoUrl":Ljava/lang/String;
    .restart local v44    # "providerArray":Lorg/json/JSONArray;
    .restart local v46    # "providers":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    .restart local v47    # "slogan":Ljava/lang/String;
    .restart local v49    # "socialArray":Lorg/json/JSONArray;
    .restart local v51    # "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    .restart local v52    # "sourceId":Ljava/lang/String;
    .restart local v53    # "sourceUrl":Ljava/lang/String;
    .restart local v56    # "thumbnailUrl":Ljava/lang/String;
    .restart local v57    # "url":Ljava/lang/String;
    :cond_9
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v60

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "/"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    goto :goto_7

    .line 740
    .end local v4    # "address":Ljava/lang/String;
    .end local v6    # "yid":J
    .end local v8    # "name":Ljava/lang/String;
    .end local v13    # "pid":I
    .end local v16    # "pinyin":Ljava/lang/String;
    .end local v18    # "hasCallMenu":Z
    .end local v19    # "alias":Ljava/lang/String;
    .end local v22    # "authIcon":Ljava/lang/String;
    .end local v23    # "brief":Ljava/lang/String;
    .end local v24    # "catId":Ljava/lang/String;
    .end local v26    # "extraData":Ljava/lang/String;
    .end local v28    # "hotCatId":Ljava/lang/String;
    .end local v29    # "hotSort":I
    .end local v31    # "isHotPage":Z
    .end local v32    # "isMasterPage":Z
    .end local v33    # "isPreset":Z
    .end local v34    # "latitude":Ljava/lang/String;
    .end local v35    # "locId":Ljava/lang/String;
    .end local v36    # "longitude":Ljava/lang/String;
    .end local v37    # "miId":Ljava/lang/String;
    .end local v38    # "miSudId":Ljava/lang/String;
    .end local v39    # "phoneArray":Lorg/json/JSONArray;
    .end local v41    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    .end local v42    # "photoUrl":Ljava/lang/String;
    .end local v44    # "providerArray":Lorg/json/JSONArray;
    .end local v46    # "providers":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    .end local v47    # "slogan":Ljava/lang/String;
    .end local v49    # "socialArray":Lorg/json/JSONArray;
    .end local v51    # "socialList":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    .end local v52    # "sourceId":Ljava/lang/String;
    .end local v53    # "sourceUrl":Ljava/lang/String;
    .end local v56    # "thumbnailUrl":Ljava/lang/String;
    .end local v57    # "url":Ljava/lang/String;
    :catch_0
    move-exception v25

    .line 741
    .local v25, "e":Lorg/json/JSONException;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONException;->printStackTrace()V

    .line 743
    const/4 v12, 0x0

    goto :goto_8
.end method

.method private setContent(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mContent:Ljava/lang/String;

    .line 450
    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthIconName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAuthIconName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getCatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mCatId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getGallery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mGallery:Ljava/util/List;

    return-object v0
.end method

.method public getHotCatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHotSort()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mHotSort:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lmiui/yellowpage/YellowPage;->mYid:J

    return-wide v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLocId:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mMiId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 576
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 588
    :goto_0
    return-object v2

    .line 579
    :cond_0
    invoke-static {p1, p2}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "normalizedNumber":Ljava/lang/String;
    iget-object v4, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 582
    iget-object v4, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/yellowpage/YellowPagePhone;

    .line 583
    .local v2, "phone":Lmiui/yellowpage/YellowPagePhone;
    invoke-virtual {v2}, Lmiui/yellowpage/YellowPagePhone;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :cond_2
    move-object v2, v3

    .line 588
    goto :goto_0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    return v0
.end method

.method public getProviderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSocials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSocials:Ljava/util/List;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsHot:Z

    return v0
.end method

.method public isMasterPage()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsMasterPage:Z

    return v0
.end method

.method public isPreset()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsPreset:Z

    return v0
.end method

.method public isProviderMiui()Z
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAddress:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAlias:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public setAuthIconName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "authIconName"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAuthIconName:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public setBrief(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "brief"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mBrief:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public setCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "catId"    # Ljava/lang/String;

    .prologue
    .line 531
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mCatId:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public setExtraData(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "mExtraData"    # Ljava/lang/String;

    .prologue
    .line 602
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mExtraData:Ljava/lang/String;

    .line 603
    return-object p0
.end method

.method public setGallery(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "gallery":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mGallery:Ljava/util/List;

    .line 242
    return-object p0
.end method

.method public setHotCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 516
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    .line 517
    return-object p0
.end method

.method public setHotSort(I)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "sort"    # I

    .prologue
    .line 501
    iput p1, p0, Lmiui/yellowpage/YellowPage;->mHotSort:I

    .line 502
    return-object p0
.end method

.method public setId(J)Lmiui/yellowpage/YellowPage;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 166
    iput-wide p1, p0, Lmiui/yellowpage/YellowPage;->mYid:J

    .line 167
    return-object p0
.end method

.method public setIsHot(Z)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "hot"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsHot:Z

    .line 420
    return-object p0
.end method

.method public setIsMasterPage(Z)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "master"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsMasterPage:Z

    .line 405
    return-object p0
.end method

.method public setIsPreset(Z)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "isPreset"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsPreset:Z

    .line 435
    return-object p0
.end method

.method public setLatitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLatitude:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setLocId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLocId:Ljava/lang/String;

    .line 547
    return-object p0
.end method

.method public setLongitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLongitude:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setMiId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "miId"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mMiId:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mName:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public setPhones(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "phones":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPagePhone;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    .line 287
    return-object p0
.end method

.method public setPhotoName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPhotoUrl:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public setPinyin(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPinyin:Ljava/lang/String;

    .line 272
    return-object p0
.end method

.method public setProviderId(I)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 308
    iput p1, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    .line 309
    return-object p0
.end method

.method public setProviderList(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Provider;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mProviders:Ljava/util/List;

    .line 569
    return-object p0
.end method

.method public setSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "slogan"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSlogan:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setSocials(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "socials":Ljava/util/List;, "Ljava/util/List<Lmiui/yellowpage/YellowPage$Social;>;"
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSocials:Ljava/util/List;

    .line 390
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSourceId:Ljava/lang/String;

    .line 487
    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSourceUrl:Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public setThumbnailName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mUrl:Ljava/lang/String;

    .line 182
    return-object p0
.end method
