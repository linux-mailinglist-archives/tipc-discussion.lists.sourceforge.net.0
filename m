Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D35DE8C6C5E
	for <lists+tipc-discussion@lfdr.de>; Wed, 15 May 2024 20:51:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1s7Jip-0005Ck-OW;
	Wed, 15 May 2024 18:51:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1s7Jio-0005CZ-AT
 for tipc-discussion@lists.sourceforge.net;
 Wed, 15 May 2024 18:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=83qCqLgmxash8hD1JbBz0fYMJ/+QuW4/I8NqGn5iZnE=; b=HSWK7m8/3Ri1tNXW8V3X4uqtTi
 B86K0BVqjPP84tV8DhS9LHbYJEWOubjD2rSawKGAroxv1ljQBRxg1LjfFPZijlK0LCpVqsHTZryzA
 5OAgsyXEFFuERbS3MPQfe7Js4L43VyDtSjMV8gdB02r3U2YnGrqNGlc8t9xznvqVsJRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=83qCqLgmxash8hD1JbBz0fYMJ/+QuW4/I8NqGn5iZnE=; b=UaVXbqH+QoSSXAHNurvxxCl1Cg
 Z3WdtWhiizoIIBDZed/JOrYtxYKDiIMVJ/QZvFHj6DxHdqAy55JXkpLUT+FOVbIcLVdoP9YMBDOzT
 xblZCSzcibI/7eYVTHqR4/fmhJt+g2MFOhy2vYWj+OhfKYUPN8ty02RdzOUd03J7dYKw=;
Received: from mail-vi1eur05lp2169.outbound.protection.outlook.com
 ([104.47.17.169] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s7Jip-0003qD-3A for tipc-discussion@lists.sourceforge.net;
 Wed, 15 May 2024 18:51:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gu/craXySMn4hBLSy/R80WoUdzDMtPI8JrmbPotNfKYmnNjI1iZhawM1zz37vGQwQCewLe4+ULOWslXSThcYKkf9acEixn/b/UFykavnk4iXmVFyN6eeYXesJhh2omfgk2vylECuszscXDUG16tQ33pBTHE84AUnTJAaw+WNYT8yqMnkQ9+XPgLSiYkjGt/jZJ3Ysl7glABmtitD3fL37xAUEizVcY2UqKKeqKZj+RvTLhy2aqPXs55kL8K/HQn98Dqe8HLYFOqXoidcw6ZRN8/QeMC7exmq0xHHHGf3BtQCR2db6FSSg99O/pyAeCpUqQS2K2HgfTLI4Geo7QrsNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83qCqLgmxash8hD1JbBz0fYMJ/+QuW4/I8NqGn5iZnE=;
 b=hmIZgd+f7Odjz8n2RrNwVfg7kbYVE268upGqz0KsZM1rBlSyD04H+ps933yUu9aYmeL6DqGBCO3ziNNgd7j2PLsLY6uxqW2TR6EgIpDou0HANawjhVjzQU39eBTKNrJn95TxKN+7e7OXK7iDR2h4vYitXI5PEDPyJmN6DMap26XILwmdWeF+guHcAmLfLRnpqn2ezG/pOrBIH8V28T1/8Rssz+MM4u+SMGj6NKiH2qO8JbfGdgCsQfHlaCoKvT3abWb31aIJnKDiiq4lBno7or/Adwxe45j/4buzj/Kj5DMnj+/QCYQn2cZlelGkMqY+i9Y7avc/3y1lh2XlEjqocQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=83qCqLgmxash8hD1JbBz0fYMJ/+QuW4/I8NqGn5iZnE=;
 b=uII+YZfzNDUelUvu6Shn6C51pS6yETSVm4J+oxOGXP8jiAL0owIirGV/zffOt0I49wXT77NXIe7nljtWqEIL2eQ+jx96wxAKg6I/Ote9IYOZ022txPp4yslKiacK4PPy3y6bgUJeuGu4SS0c1sZvnRMy4IyK4sPti3ozgmt2VivW5R0MP4jGyuTBNZoqcuBU0Zo4ROn3Pv8BxnvjPTc7m3Af6tPW5XEMan54TLNh3sngWhZ1ldzKCvLWuiw8/dtDLags2h21oLGCDudr+LAH49UCH+38rvuiVWnx25vbKp1k2h/CQyBe5/rHbVkNmQ6Y/+RGzfEHut9vTGM6lnb+8A==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by VI0PR08MB11041.eurprd08.prod.outlook.com (2603:10a6:800:256::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 17:18:35 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123%7]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 17:18:35 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Tuning/Debugging of "Retransmission failure"
Thread-Index: AQHapukIxgkrhGtsxkqoix9sU9kkjrGYiI4I
Date: Wed, 15 May 2024 17:18:35 +0000
Message-ID: <AS8PR08MB7767B86D7890DB40AC33E7BD85EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
References: <AS8PR08MB77674C4B42FBC0B2F9CA006685EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB77674C4B42FBC0B2F9CA006685EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2024-05-15T17:18:34.517Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|VI0PR08MB11041:EE_
x-ms-office365-filtering-correlation-id: 1d554f6b-0233-4a2c-bdb7-08dc75030d74
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?Windows-1252?Q?pvwn38MsQm6T9BZROJrK/hG5GG7YZ4JjOVq7//5rN5Q3JSCc2Cv1yQQk?=
 =?Windows-1252?Q?FNbFvTkCzljSlZSkAcTRNts5Rva2uB7/+87j0gLSJif6utr6uWqRCoeT?=
 =?Windows-1252?Q?pNB5JYJFD4bWCLKNoICw+DuEvRh8pgFYeOD25grss/vliz2pyXAfPzDe?=
 =?Windows-1252?Q?lMt6wcQPEO6atXEum6OEs8jpqcDPcW4fJtE653xqDRgO6U/hYRUnva+t?=
 =?Windows-1252?Q?odXzMEXgHA866Wi+iIq7K+eUs8RuMb6JAOc0nqZ0i0HVi5yJYMYO9dz0?=
 =?Windows-1252?Q?aqxgk5CbxGF6+1V37XAhhJgysB29TgloinNPpi2OfMJWtuX0nn41boR+?=
 =?Windows-1252?Q?nhNoxNgWQ7nObHziZEtqKMl9L55Y/Z6ZV5ExLPrnQYYWloJo/fgugrp2?=
 =?Windows-1252?Q?3lzWL+B+Eme70uRp0IVxmmP2+LqBFkN+EaNu4G2PTBNY5lgboDB2WJK7?=
 =?Windows-1252?Q?PjwDuUJGiEQOGTqCjvRhUw4BzoUJpKCayUjuwmRBQJDix8Ls0sNMvDML?=
 =?Windows-1252?Q?sFxLOPHzCc3A/UwS91BzOjj634KkMLfKVim+AlPAuzFgir6c4ayd8nmX?=
 =?Windows-1252?Q?BZRgK9184/BPCUG/72gkvwZa/CPnrvTn2K+UFYBp+ZsBZFXZri4nqnHa?=
 =?Windows-1252?Q?/dKCEDgk/L1XiJOsgwAEYlBy6eXybeFrLae8axXICxNSw1i5uCFxTG7m?=
 =?Windows-1252?Q?PyAmImx9axBWaIHsZuLPzqg8jo2b/7dzE8D/MMxRsB/j5bAStmM/RM62?=
 =?Windows-1252?Q?PuoiETjcB2GAnjnAh6ibmltYZfSi/by2XEaYXhgyIG3fpPdFSBSj66Iw?=
 =?Windows-1252?Q?G3j8PzAe3OEUH7UVpNsHgRI7olz4zb5I6496KtmzP2fxas7ksiyQPCx7?=
 =?Windows-1252?Q?cfzSFdz47ZkJFLTtRs7GVNCGdZEH9C/CF1lsRvJGHXtAuq3nbIM24TtQ?=
 =?Windows-1252?Q?75NJ1y4V4zeFDfj5QHUhcOhZ9Oh45s32N/MiN+uP1C9I91VX7f19xKdd?=
 =?Windows-1252?Q?hLOQuh0NLmUB4qLihtA9YQdog+4Jwkh8YnZj62iXfUlkI7DNDWhKfwEh?=
 =?Windows-1252?Q?bARgfLoB60Is1jW66/b5g2YoIG1bLY4E5o/dnHEwq5noWsKDqrDvCeUM?=
 =?Windows-1252?Q?hyhAlwxHNntTm3vnxM4jEvmu7XczGgbvh25wd/ijEZAr+TlU9wDvLAAs?=
 =?Windows-1252?Q?CcmyscdSNBqa+S139kgoW45MWiBrw7Pfd0xZ36zbvouwgn6sPNbUO2XT?=
 =?Windows-1252?Q?bnVw3YwA/DTUg/zcihoLnkysWaBIsYt/c2WHJXPYBi9WcDVdiBSgF9wb?=
 =?Windows-1252?Q?f1da/+WNa9NMTxLkMTTMpWc/xS9PKPROS9TYHJp2B7kl2hoAfIq4q3cF?=
 =?Windows-1252?Q?gGwz0KSNqJr3q47tKxK7eHmJidwffg9CaYMfTO/03fRq7MKxpWN1CAu8?=
 =?Windows-1252?Q?D7/8l5U7zm5SGmFfGV2VwA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?/vLGleGY8e+zyuFYoBXoiPAg2sqnppZ8P7nsGkY1GiW4nYZuwijSZrIx?=
 =?Windows-1252?Q?tk+qCqk5BPTGLkL3H+KW7AH1s8UcmAbVqNy4DxrDhOAUFCNgeSV/rdTL?=
 =?Windows-1252?Q?2OOTKV9pGY+DT/l2wgzE1Xp36vUSbfA+YX5lll2jwIIJqeMscjwQO5EP?=
 =?Windows-1252?Q?7v/JG71NiJxeTQlF5rCuZgVv3g7qo+It72B1dbPuqghecNKyWGmSTn6s?=
 =?Windows-1252?Q?SU8Tcdep91HLV3tWfNzNKy2sBvDBl56/DaEyhwFsaLtrt3NiUbYYnmtM?=
 =?Windows-1252?Q?4DvodW2hLot7XjkF3LdFHLbQxSnsLykddon0aQ6I8Ym7HD4z92xBPA7j?=
 =?Windows-1252?Q?p4rZ344BX4IK+ACSa6+VCEXaUPb3Z9V7SrNIid3YEiuS42j8A1jQ7kpj?=
 =?Windows-1252?Q?ODX5AYd1E2vPBd1MLty3fl0i2nAIzpU0dPSHPXWS8hFUwT0GFgB8xkRq?=
 =?Windows-1252?Q?0463cnUtEVDBHK6aZOvTenWqD8/DN81yx9FRP81WlqG0I11tQqZrv9KW?=
 =?Windows-1252?Q?q+M3jMRDa1nHwJ12sDYJ+AJNm9RXHfk5Y0XQ+nREdtlYcrrBOgVfp45D?=
 =?Windows-1252?Q?UeHS7AaYNTNvO+T6HI2BQ5ttVnhSHhatmXr/eIH0ycAU2sm4qzUCQ22k?=
 =?Windows-1252?Q?gVXo12UZSeMvm0OqI+fGlfbED6xxyvaem28ChKt5CzCw+iw7ZYxXGd93?=
 =?Windows-1252?Q?XTv/r48WZvugES1EU/H5FuX/fHS8b/FBmSgfBcrqau0IGiIvD5HWmiAg?=
 =?Windows-1252?Q?Vgib0t2ADPxsRv5OoKBU43oV74C6rbiH9KojuNVP+3UkXzT8pXwfSmqB?=
 =?Windows-1252?Q?FQsfdNRfXGumSyrYdOU2DSLivI3f/i8J0Mws+pnLHHdh/72YngSmNwgw?=
 =?Windows-1252?Q?a3IofnRBqzLlD/YQcTbS9wkUzOR1x+/6kCArVebZ+GhttLqfb8rmK8uh?=
 =?Windows-1252?Q?QAgCpdyDyBDMCfvQap1wIvM+5wTtO88ATcda6dh2Pm2u3hEJ1+rj5B8n?=
 =?Windows-1252?Q?2Tzoh3edqhDgepdr/9gGsCIKx8j7LoW46KBlieHeTbX5ImM4Zb+DNbpX?=
 =?Windows-1252?Q?Hhj7MtjoFG2WdzkZCSMvk+VblEe0tB88vwP+YOgN6fJdT9bGZkpn1e5/?=
 =?Windows-1252?Q?sbVTAgGLwQvB2zZ2RcLL8pI4/s0ICV2AiTv53vhnPsnO5GcBmT3IilhM?=
 =?Windows-1252?Q?bsFUsIXNJyH8/uozWJZoNRFebOFRatF7/yJ42Q0KNQy13v4CGbBPVyAJ?=
 =?Windows-1252?Q?dUx4B8AvOMaGwTqZhar6MgpFI84YXfOcx1hPs8Ojglyyf88r016otZdB?=
 =?Windows-1252?Q?DcSThfdrgpmC2zBFKnHtSyX8tNA8Z33GdE+GjTYnYwz1EKlN/p2kloqg?=
 =?Windows-1252?Q?W0Qyji1dDBO9GawMZnrueId3k2pA4YjgQFz6Ytz0D6o8LZR3PVlZ3TZu?=
 =?Windows-1252?Q?b8oGajtBwsdtDsZ5XyHjyJr3FMAawBCQwPOUoUT0dSzgH13Lz1JtmioP?=
 =?Windows-1252?Q?oO4P+niOrMpKji0DNQ5qsS6G4c0O8/npmyJfa88mBQo4C3hqMQwIJQrk?=
 =?Windows-1252?Q?6OXhhkMc5PZvoKEbuHaYQTMvdKaoXTpEUs/7WN0EkDBOUKobL1hzmU+f?=
 =?Windows-1252?Q?XVJyFSq3roubJJE8FzgrfyFAHv3g9Ksl9g+f8Q8xgPLFFb9w668tlsrC?=
 =?Windows-1252?Q?+3EYPXoNalfFGHzywL0MZGAod0hz2l/K?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: qz9WVj/l31CGq4QpOq9A9KQCNBt5yHAQaVDgsxDR+6zkLSkkUHGrkUeBIJPeJ2sXGFI18GHOgkZM3ZLPcogk2raBBPTizSorwhJsgsEu1lEArmlCar4jCBqq+RNs2gV1JI12cvTlPLVxoDaQka/+oDwC3MYb4cvx37q+YKJ/s6W26deMHbo3po/eNidNEwEnq56MiBsc1GF2yn0pDjDojRULC7rRuN/D5qYM+tSTlAxCifO6EACufsUL3Jmm4RID+lwTjEZdxFTLr9wrJZ3xU4UU1MrTqlzdD2q7jwClimILHHyYYjek33b/s36Gjw6ab2HHola/PnsN783MywOxBKgps5SvE9ZSmk8DZhSf00Xle0M0VGt1RvpHgwFGIt9rl/a/QjhSAu23iDOsHclo7AVj7WWTGrnXwmMrpdDYORHYFZOnSG4iSIAFaIPApAJC3yyi6oD2Qpi3h8wyqeRJtJdMW4a+3+bZOROpP0dQkCs2dSqhpfESVsCndzjOG3VCb9i3BoZzBTErntfArksYTvlB7hwPslL9EXDwyBh9WUZUAax2SPE/83bRGo2SU/UeCY6xlL4+yL6WVkQDRQS3lGKE34D9AOtP9qtk59cTAZE1DC1kx6LCDOt0eJYYGm94+EyoKEZ8tMvwZZfXlSWFAQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d554f6b-0233-4a2c-bdb7-08dc75030d74
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 17:18:35.0283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ha3Sab/Pg6Vizrvj/E0UuBDJUJf56Cx2ZM8IHQKSN9hrCPM0NeGWi95ORmsCY6CQBh4Ofzg/E51QBuhhBB61nct+N3z6ATH6o41OlkdmSVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB11041
X-OriginatorOrg: fisglobal.com
X-Spam-Score: -12.6 (------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In case it matters,
 I'm seeing the same thing on older kernels, 
 too. May 15 11:58:11 rhel04 kernel: tipc: Retransmission failure on link
 <qqqqqqqqqqqq:rhel04-wwwwwwwwwwww:ubu04> May 15 11:58:11 rhel04 kernel: tipc:
 State of link Link <qqqqqqqqqqqq:rhel04-wwwwwwwwwwww:u [...] 
 Content analysis details:   (-12.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fisglobal.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [104.47.17.169 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.47.17.169 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.9 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s7Jip-0003qD-3A
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Tuning/Debugging of "Retransmission failure"
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   In case it matters, I'm seeing the same thing on older kernels, too.

May 15 11:58:11 rhel04 kernel: tipc: Retransmission failure on link <qqqqqq=
qqqqqq:rhel04-wwwwwwwwwwww:ubu04>
May 15 11:58:11 rhel04 kernel: tipc: State of link  Link <qqqqqqqqqqqq:rhel=
04-wwwwwwwwwwww:ubu04> state e
May 15 11:58:11 rhel04 kernel: tipc: XMTQ: 45 [40360-40425], BKLGQ: 0, SNDN=
X: 40426, RCVNX: 37551
May 15 11:58:11 rhel04 kernel: tipc: Failed msg: usr 12, typ 1, len 13928, =
err 0
May 15 11:58:11 rhel04 kernel: tipc: sqno 40360, prev: be5645f1, dest: 8356=
ce57
May 15 11:58:11 rhel04 kernel: tipc: retr_stamp -1694829503, retr_cnt 110

Linux rhel04 4.18.0-513.24.1.el8_9.x86_64 #1 SMP Thu Mar 14 14:20:09 EDT 20=
24 x86_64 x86_64 x86_64 GNU/Linux

Linux ubu04 5.4.0-176-generic #196-Ubuntu SMP Fri Mar 22 16:46:39 UTC 2024 =
x86_64 x86_64 x86_64 GNU/Linux


Gary Duzan

IT Architect Senior

GT.M Core Team



E:  gary.duzan@fisglobal.com

FIS | Advancing the way the world pays, banks and invests=99


________________________________
From: Duzan, Gary D
Sent: Wednesday, May 15, 2024 1:07 PM
To: tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforg=
e.net>
Subject: Tuning/Debugging of "Retransmission failure"

   I've started to notice messages like this when pushing TIPC a bit:

[Wed May 15 11:27:32 2024] tipc: Retransmission failure on link <xxxxxxxxxx=
xx:deb03-yyyyyyyyyyyy:ubu06>
[Wed May 15 11:27:32 2024] tipc: State of link  Link <xxxxxxxxxxxx:deb03-yy=
yyyyyyyyyy:ubu06> state e
[Wed May 15 11:27:32 2024] tipc: XMTQ: 15 [30965-31149], BKLGQ: 0, SNDNX: 3=
1150, RCVNX: 27685
[Wed May 15 11:27:32 2024] tipc: Failed msg: usr 12, typ 0, len 13928, err 0
[Wed May 15 11:27:32 2024] tipc: sqno 30965, prev: ace568c, dest: ad7f568c
[Wed May 15 11:27:32 2024] tipc: retr_stamp -1697900680, retr_cnt 73

The host reporting the problem is running:

Linux vlltcgtmdeb03 6.7.9-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.7.9-2 (2024=
-03-13) x86_64 GNU/Linux

and the other end of the link is:

Linux vlltcgtmubu06 6.5.0-27-generic #28-Ubuntu SMP PREEMPT_DYNAMIC Thu Mar=
  7 18:21:00 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux

Is there any tuning I can do to avoid the problem, or other data to collect=
 to better understand it?

   Thanks.


Gary Duzan

IT Architect Senior

GT.M Core Team



E:  gary.duzan@fisglobal.com

FIS | Advancing the way the world pays, banks and invests=99


The information contained in this message is proprietary and/or confidentia=
l. If you are not the intended recipient, please: (i) delete the message an=
d all copies; (ii) do not disclose, distribute or use the message in any ma=
nner; and (iii) notify the sender immediately. In addition, please be aware=
 that any message addressed to our domain is subject to archiving and revie=
w by persons other than the intended recipient. Thank you. Message Encrypte=
d via TLS connection

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
