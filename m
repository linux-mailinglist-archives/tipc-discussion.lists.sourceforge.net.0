Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 068927098B8
	for <lists+tipc-discussion@lfdr.de>; Fri, 19 May 2023 15:51:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1q00VW-0004Aj-CS;
	Fri, 19 May 2023 13:50:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1q00VU-0004Ac-SL
 for tipc-discussion@lists.sourceforge.net;
 Fri, 19 May 2023 13:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W4mwqEgahvdhFzlnm8KGhiYwp6A5zxg8EgkTN+dn/SU=; b=Jkf3nx2VJyT0i+hUbAWi1qJrm2
 igJAW9m7po5jWp9FbkCxq3Ym3mmCPiiVyU68jkBGnNEZVu98TfyWwQRfhWCVTwzygZkjMdOA8b7i0
 o6TBMzYC8IW/pY/mMQvOM8Vtaz5qZ9QqysO0OWvQUSllkezizKkNUHg21fDGI5Kgfyi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W4mwqEgahvdhFzlnm8KGhiYwp6A5zxg8EgkTN+dn/SU=; b=Dy9OkwtzLPeSgJQxoj2HHeGdyl
 WBuQD6mordhG8E5w+oMd/3UCZi3mTJ3IuGd9mxLI6YNeOudAhAHIBNtzvdxPJab9+btIcqyzwPeQ3
 2/tYk2EfUdsTdaaB/9dgpbhTZAXOPVOtcmCJoI05IldrJvCh1zX5XCPnU38Yt/NQeTzQ=;
Received: from mail-he1eur04on2135.outbound.protection.outlook.com
 ([40.107.7.135] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q00VN-0008Qm-Al for tipc-discussion@lists.sourceforge.net;
 Fri, 19 May 2023 13:50:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f5l1NeMH1ij8XpeJBm/MCNTL8DoGnyyP26sqRmGgAUpwqhYSHoKzZMp6yIuqg0YiOwJ8PwoSqvRptkXcHhUfjK9pmfealdRCnIQUPzz919kClRqlqnH617/RVbTPAT3oFNww3fWMI7js06UtHmEnThKjHHPsUpj7sQo+cRWqd83b7NdnFrc+piGsi/m1MltXxgKzsIpcS6bPWZbewItGcG+dp8DY5PE2mdRVS9T367R2vrarZqVzFAVs76yZ/bmBmDtIzER9ezupljQqJfrrCdrdnVD39QroSUZ3LwWObqs72to1YKfnBvoPD+1PGKVS1K1h7eCH6EYzYtNguKTa9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W4mwqEgahvdhFzlnm8KGhiYwp6A5zxg8EgkTN+dn/SU=;
 b=L03GzEdD2wTKIXxtH8q0Eslr44fWVb48UhuGXQHY/bsP85IHpjWc1EajdYfq/Iowa6dmx3raQM2aYMqsgbaW0Xiuhc4OyuReaMycAnygwwCz5TT2SqwxsNRoem1Ma2UY9XXoe4SiDh60DSHaZi6s4/062imXEZvGIxFMOzkbugkpnj7S4KCHuiXnqhYEjLMeqRo1lZ2DSxykc3c3dBs1GNKiG7E2b8JqcH4Truk3M5XkyYop7UpR2ey/lOOPb+xvWUp0jbt0ZXQLR8N6UlAjTLILRXSRnLFi1CaUIc22OQOVfIPKkVw2dmEK5SY2M+e26jcRtfbqWHmQR6fYE4uM8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W4mwqEgahvdhFzlnm8KGhiYwp6A5zxg8EgkTN+dn/SU=;
 b=sW7qzzAoWB0L3ae7hqfXog6yMbBvyulBHymYkUw9sYkXSZmYxcmuWYBIBSoTvC7MyB8WkjS+eds3Wpb3pWeRTThKdIsRrbZVXNqB1pD+zAp65VoWa62agFuSCcqS2DY9nWFsMcqNBmiemcvbsaNZIlfNtK5WA8ev3xL7cD4XRHH2Yh7G7tQZRmGR0cy0oUvclIz+9BX+naEQPvOz+cOgga8yT5mel+RW7t+gvkPcuwbP4eL/HbXNnXxNCIva2GZ8TusHPtUZZ8xyM2+4G5us4gtwgpFYZS43pwj9P/EW4uB++wg5pGcvByC4A+f0DjA8nQgOAsHqjWSuDEHtmXEykw==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by GV1PR08MB8237.eurprd08.prod.outlook.com (2603:10a6:150:5d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.18; Fri, 19 May
 2023 13:36:26 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664%5]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 13:36:26 +0000
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Gacks on, callbacks suppressed messages
Thread-Index: AQHZiZ/GTXF+NDmT102c6zrsM+lOZa9gyIeAgADRKNo=
Date: Fri, 19 May 2023 13:36:26 +0000
Message-ID: <AS8PR08MB7767CBE376769FC9F52859B3857C9@AS8PR08MB7767.eurprd08.prod.outlook.com>
References: <AS8PR08MB77673F8CF0D8B43248CF1E7A857F9@AS8PR08MB7767.eurprd08.prod.outlook.com>
 <DB9PR05MB90782D9E42F4E9ED59ED2148887C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB90782D9E42F4E9ED59ED2148887C9@DB9PR05MB9078.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2023-05-19T13:36:25.888Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|GV1PR08MB8237:EE_
x-ms-office365-filtering-correlation-id: 5b95b416-b4ac-47db-40f1-08db586e0b81
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B+RujcKBh9+1C/FZiOdbZbeAvobtCILXHtSTRhEE4gpQrS+0EIp/FwWHv6FDv+8d/kpfl+RBi7BkznuvnE8vqHYqTYmXkU5LbcG0zemY4SU/Dt9W2kHJL7imeRvQfqWHuQkMoO6Oa2cHUbQwaPmjwxfxke8eCD825D1QhdtLJact/98AYVx6m1b18bCMZmbAjc6y2VXxpWkrKqR6+704bv82+ABrX4fN1M6I3qPiWNUcHmQmeyft2SBP3SEnzv/ASDigAVDDQYcfs6G9SHSBzdX95QnZH1xay8CKtMhHXYWXZMDhrztctr4WxmOgRYd1aekeC9aDdJkysDwEH2KI3KK46uH2bPOOfxc4KiDbYo/cRE04QEqvG9P/pUKHGL3ivMQ7dV3E26ldHbtPAroeG47KuZsXEfWuxCI1PlkAjVykckcFuYbOee45ZaapDgxic3xvRnUdkbmg54gwORUdEh5eU48MiuAHqD3O0bKjN0qCPipDlwYgZ5ffYK6hy/2RKR8CuXnr7toytYxNeoBs/RS0/6CIzVS+iHkGPw1JQnmOfPXqoJVpjrDxZAofXKrGNKlUxhn8VOmyuHURBhG9jdKJllV2JNxzI9O87wwIZQjTXWCvd+zA3og2/c0SISSK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199021)(19627405001)(66899021)(76116006)(66476007)(66556008)(478600001)(66446008)(66946007)(64756008)(110136005)(316002)(91956017)(33656002)(40140700001)(83380400001)(53546011)(9686003)(186003)(26005)(6506007)(7696005)(52536014)(2906002)(8676002)(55016003)(5660300002)(8936002)(15650500001)(71200400001)(122000001)(82960400001)(38070700005)(86362001)(38100700002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?jDO3dudzLfmGfRlcEwW+HKqd1MzTXRQN/AO/Dg08IXpdvzOz8WfDwtAa?=
 =?Windows-1252?Q?B00B17nuVVZtLtSIOBdMuiJ8MiYrwlSBLvQAZmRVyXyaqRRYtANPPGth?=
 =?Windows-1252?Q?p8+1j6X4NBxIQJ5LnlOJdJmK9p83WXwETcjW/cf4H+zSQWJbUexiyBxk?=
 =?Windows-1252?Q?2d+IfiXnlKTXEFvae5mH4D0EOvm0eOlIvc/SfVYA5YVaispYPLEzwsEs?=
 =?Windows-1252?Q?9ygfsgrQIeOjIDx0NXCd9HQJKIHNo/Om+B8GTezosgnsitarY5ju5VbK?=
 =?Windows-1252?Q?b9z7vOQS9qv6IzUJFD3rkEXgxLZ/R+j+HBhJHpodxAjATeYpCLWZpkV8?=
 =?Windows-1252?Q?wNmyLUQYB2Na2pwuSOb7AqOi+czR9f/hbEu5wnxOsDEX9s7ofQcSvEXz?=
 =?Windows-1252?Q?EfVmGeiEcXPHg01uRtDo2g/tvRrMItkBcLv/740xH6lgCRadjYz8XbUR?=
 =?Windows-1252?Q?bjzjWrlkNhA9lGmhJpXxLO5+icAUzOSbsNuR1asE3QEFQqEwr1tHz09n?=
 =?Windows-1252?Q?3IUf+hQhVJ0pFXQhkYuWjltyY9MWOImBwR57G/QL884zoHBWOz5fXI1T?=
 =?Windows-1252?Q?Fz5p+cyw849dzci1N7wVPRrkTf+v3wPAQbPX40RwaZ25ftqF+G65FAee?=
 =?Windows-1252?Q?igZx/12IuBQ1BLdd4aQAo5YgQImvXyx39tMm5uID0W+Oo3gdwwx2hu6+?=
 =?Windows-1252?Q?zMqEHz6MaRdR3kYXUUHf7sBVBnmdg79q+xwU3aExFnOcxcqfbZuLdWg1?=
 =?Windows-1252?Q?tdViOIaVpnZGqFPsAEhy9hJw8DI07GVoCkKxL+DNOyKqlllbknyHB2t7?=
 =?Windows-1252?Q?P5peh0oBbmddJDXI5IZeffumDsJw6E0WQcu9qkUmwFPLv0dzFgIE8+sV?=
 =?Windows-1252?Q?oZHhUz9uwTGMeXOm7bBYspshPgOf6+fpBM8iqXM9N+bJmaRmrSkoZDsC?=
 =?Windows-1252?Q?Ui200wY+gXzwACYpF49gFf/GXa1V+ZD+5o3VYP5cFs2xlAPbDNqdCSHe?=
 =?Windows-1252?Q?Zp+t79wFLGRw6zlFQi4gqXok6Gbw/ULQDXT04wks1bqJEh2yZm4FL/Wf?=
 =?Windows-1252?Q?9mlJwkBuejd9TDazRnhEXpzmCx0qv1Bzc80nnvNKXv9eQx5sGVF7lXAF?=
 =?Windows-1252?Q?kSXKtT5hx30Y6qiorkn8XtJoyQCTfvKUsxbvIcYXhR/BhEX8Kc9F4Y+M?=
 =?Windows-1252?Q?K8f87Ixxc1qz3bAxDY8pUSLEXniEt1KGjP3tzlgX0L5SEOrAgVVAKg01?=
 =?Windows-1252?Q?yDStz2r1pHwdaJTvbyjFqPwu+c9jZ2KSQAP/C70+5DUVMtSADl0U/Bxr?=
 =?Windows-1252?Q?VEgZZaL8t5LpmjavMGOqNVNxl5ZTlcLSVsKpwQmgw0uWsS3Qw63CP1G0?=
 =?Windows-1252?Q?QJ5iRY+6yTvd8ZOz05nHsNwqpU/QQ8Hr5Ax1jwsQ6TmAcrtZExTt1zXp?=
 =?Windows-1252?Q?zUjm1nJjIXvSt2RKab0cM7j1iJzq7RIGCDs3WF4Z0Kd2RR9yCf07JFRB?=
 =?Windows-1252?Q?nwKQdjlcbsIgQK+CE5xaaiVADJTL1M6N0xR8ouciLm4bvm+O9iYp0YMl?=
 =?Windows-1252?Q?QVwfEwowUlIj6iSj+JHg5fjwPrzW6UK4lQ9zMqx3EouKYreukmTBfkFo?=
 =?Windows-1252?Q?7iRAC00OT3eSPFNV6hlyH02c4mBs8SLK0vJVZbwt0vlpC6SZK39kD73K?=
 =?Windows-1252?Q?Jw1qwDunk06AwqQncvUdm2MJDGNt89Lk?=
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b95b416-b4ac-47db-40f1-08db586e0b81
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2023 13:36:26.5158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LHK+GK0jZ0i/uavHNKxnNDSRZ/MkPHXBWMrw9cnNLbQeNzLWM4Hf2zSIAqJX+HT1+j9B4UL1K7Voq8wanwbiV49hHnXLNONAn+UcXxRCzxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8237
X-Spam-Score: -8.4 (--------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thanks for your reply. Assuming that "handled well" implies
    that there are no unreported message drops, then I can focus elsewhere in
    my debugging. Gary Duzan IT Architect Senior GT.M Core Team T: +1.484.302.3226
    E: gary.duzan@fisglobal.com FIS | Advancing the way the world pays, banks
    and invests™ 
 
 Content analysis details:   (-8.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.7.135 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.7.135 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
                             welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q00VN-0008Qm-Al
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Gacks on, callbacks suppressed messages
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

   Thanks for your reply. Assuming that "handled well" implies that there a=
re no unreported message drops, then I can focus elsewhere in my debugging.

Gary Duzan
IT Architect Senior
GT.M Core Team

T:  +1.484.302.3226
E:  gary.duzan@fisglobal.com
FIS | Advancing the way the world pays, banks and invests=99

________________________________
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Sent: Thursday, May 18, 2023 9:10 PM
To: Duzan, Gary D <Gary.Duzan@fisglobal.com>; tipc-discussion@lists.sourcef=
orge.net <tipc-discussion@lists.sourceforge.net>
Subject: RE: Gacks on, callbacks suppressed messages

>   When pushing TIPC a bit hard on some of our servers, I've recently had =
three of them issue clusters of "Gacks on" messages, with two
>of them also issuing "callbacks suppressed" messages. These had kernels fr=
om 5.10 to 6.2, so it doesn't seem like an issue with a
>particular kernel. Here is a sample dmesg fragment:
>
>[Wed May 17 17:36:15 2023] __tipc_build_gap_ack_blks: 5 callbacks suppress=
ed
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 291!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 307!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 227!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 243!
>[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 259!
>[Wed May 17 17:36:16 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 355!
>[Wed May 17 17:36:16 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 259!
>[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 323!
>[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 515!
>[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 531!
>[Wed May 17 17:36:21 2023] __tipc_build_gap_ack_blks: 121 callbacks suppre=
ssed
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 147!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 163!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 179!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 355!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 195!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 195!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 211!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:e=
no1: 64, ql: 403!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 227!
>[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:e=
no1: 64, ql: 243!
>
>Does this point to a need for tuning, or some bug?
No need for tuning, It is not a bug.
It indicates that your servers were under high load (a lot of message disor=
ders or message losses).
The servers have used the maximum number of Selective ACK blocks (64) to de=
al with this situation and
everything was handled well.
The information contained in this message is proprietary and/or confidentia=
l. If you are not the intended recipient, please: (i) delete the message an=
d all copies; (ii) do not disclose, distribute or use the message in any ma=
nner; and (iii) notify the sender immediately. In addition, please be aware=
 that any message addressed to our domain is subject to archiving and revie=
w by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
