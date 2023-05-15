Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF67D702AD5
	for <lists+tipc-discussion@lfdr.de>; Mon, 15 May 2023 12:43:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pyVgD-0002UW-5E;
	Mon, 15 May 2023 10:43:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1pyVgB-0002UA-1p
 for tipc-discussion@lists.sourceforge.net;
 Mon, 15 May 2023 10:43:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bPGjpli4ldNT4RVvaWfNwL9tU0nMMCQ5loo48mx89BI=; b=FAa644N/SNdOvLVsUIP9TRG64G
 YXu+F7X4MvWDFAP11JXDaI+hTlDI6zOBfqJ6dfqHeRBUTCHWoJ9JGbqRaJLC4t4T+d8gnzAEEQUCo
 cR5FmsMPz93ZDsvJF6GL3cfkdZdbluZuC6DdNWiOTT5qqu+QPXuMvglJQUCflYoYHgIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bPGjpli4ldNT4RVvaWfNwL9tU0nMMCQ5loo48mx89BI=; b=KDbvOBymmWpoFwp8KXLrmQsZTO
 LHBitKKMinR7GuqTIH12QVYPSJjOQXbrkeJiip+Hv2LObuxTI62qCEeUuHjUDo5oZXdOaujQPHqfK
 bHOeDi+Rr+QLxT83yh3iYZZD3Fn8GDTOSlVlBPkkNkD5Ru3TFIrgfTUptymkY2F/YhJM=;
Received: from mail-vi1eur05on2127.outbound.protection.outlook.com
 ([40.107.21.127] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pyVg4-008JM2-UC for tipc-discussion@lists.sourceforge.net;
 Mon, 15 May 2023 10:43:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TwxJNuQCfrabKZBgTQB72pJPNxiHdCO3qaX2hRa1IXeoUvpKUZFOdXhCD7rGYYoZeirjxrELmjkIPPcOX06mlt+QB2DvNGvyA/aaCaWOJ74UiSSZ7HGSlvPmU+5kgaj5T8O6oCjyuani8H9i844FCCYcN3s6CQJNiaZKOmcENv5Hg7pYFppk7NLZeczQwTPo+3DPelktO0Uqh+oN8mTwxZwTuEvicZ46Yuyge2KEjNrIzHII/yeqeeJWnjEJX7pD/cpPc19M2UiAeaSggCsXotI+WDndKrca9mrTbQr80YodenYjh5C6DajZ++MMk+4eBShuDqTzMsRCVzucbcH83A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bPGjpli4ldNT4RVvaWfNwL9tU0nMMCQ5loo48mx89BI=;
 b=IbRC1UhliiBFHirni5ihIOc3XaB77Os6tR0pMfEZ1mxCKW67gF2yxe1PvfJDclDvv6xFMlzu2uz49TjtoGUOAKWgxHjDCvS9Kv/MsEnq7WtP1YD+ltt42fWZ1yyR58Vnc4udb6Boakl2oaM7c2+OOV6uw/UkiSzJ+4s8CqHtJt2HJxfasTZp7ptq7ZMUuyaNxCkglPFFZOr9oyl7BuETuiKqh5bH8vyqYwpLGTy04ypnX1ZLs3GakJhNlH0hq02lFxOoTdebpZ8AXJRFvCaw8vvJtnEVCaD0XttUwkwpi5qyyO3kRETKhOmfMnf1xYPJO/j3yV/6yP9JZAyshh/rng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bPGjpli4ldNT4RVvaWfNwL9tU0nMMCQ5loo48mx89BI=;
 b=tD6gwmK7uFoAk+m6K7rY21Hcpsa5jtxBc84xK7zKlD3rVwoQGVe53690pcdzIUBlMQD+HfMOTRyOMIY66CL5gnDJABlmCrLC2uwg2LgeOh2Gz0lcrv1VnTkLzzZpwkJL8x5URxdugOxqTfwPFRzL0A1oFM62PMhTiWe/Ps1KXg0=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM9PR05MB8662.eurprd05.prod.outlook.com (2603:10a6:20b:419::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 10:43:26 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 10:43:26 +0000
To: prakash bisht <ps13.bisht@gmail.com>
Thread-Topic: TIPC socket ( SOCK_SEQPACKET) cleanup issue
Thread-Index: AQHZcOPYr6IF6SM3Rkeef9sYmpdpDq8wRmkAgAuEIwCAHy/VgIAAVQkg
Date: Mon, 15 May 2023 10:43:26 +0000
Message-ID: <DB9PR05MB9078847C3E57470C1F3C31F988789@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
 <CACB1WsQswDHuvQrpHu_F=G6SM7MAZJ1RU=XAkOBgnw95KquM9g@mail.gmail.com>
 <DB9PR05MB9078720FB4FED1290AE929FC889D9@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <CACB1WsQ03cxhCDBLUCKp4gXEnqSYLG-NbVST02PQCLgx_a-azA@mail.gmail.com>
 <CACB1WsQ78_0R+2-EhocereqipRse7i6D87CJEYjMnrwJCLKUfQ@mail.gmail.com>
In-Reply-To: <CACB1WsQ78_0R+2-EhocereqipRse7i6D87CJEYjMnrwJCLKUfQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|AM9PR05MB8662:EE_
x-ms-office365-filtering-correlation-id: 1cdbb133-198c-4da5-bb48-08db55313709
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1PQ4e29w6fnvrpzi064DumaLss56X5Xx2RKwfhGFoDcSTopXYkO+t+lLECjJ74WmV8UfQ26clRZV/pE1cbQG3g2H91fFwoT/Li4+LlOVHpddrbLdZOE0LWxcdimFaGDZwd/W/uUpwC52DU63KTWy3EJEv3uHnKReErRiDfGhCaoUhsFGQmubdJ9Y8UBO0X4rJgvq2ymV8fT6qlq2KLdNsXUehkbr6GxM343GLtwSy9ayXrjc06XlamverlfLUDc2uFRUun54lVHp1fqT0m11zwTo1/LMC2lEkccPJSw//mjmIcyHNhExGJsg7/DvOlbcF3dLhdH6vAIzAGYnzXtTig+xtg5FfYDMKhQ6yxbgbOqStkzjdOoyD1+Kr0iCHjR6lStY7N7PsB97BA2SCC7RMsAK5PQxTHxf+hI+PJL8EKWxEx1DViIhe79Zkws6Yx+tD9oI8XUJj2AjVhNZp2o25JV+UpvS+/VwNcdQmNmCB/wLGUdxilrBbLzb4ctW7zzexrIRAGQvBkrbLXooyGfQPhUd8+5Sy5mgV3voVb/1iSr+fkoTQruoDDfpKXo4XKSlrT3m+2hWuCJZCMlRWMPQUZE6cdawb9f4A5MAkL1MFZe6lJDdmngIJS8ncEVZ2EMI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(366004)(376002)(136003)(346002)(39840400004)(451199021)(71200400001)(122000001)(38100700002)(55016003)(186003)(26005)(33656002)(9686003)(83380400001)(6506007)(2906002)(41300700001)(52536014)(5660300002)(8936002)(8676002)(478600001)(38070700005)(66446008)(7696005)(66476007)(66556008)(66946007)(76116006)(64756008)(316002)(4326008)(86362001)(6916009)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Sm4rNnhNZjdLKzdSSHJSNDZaeW5yOEMrd2s2WVQwUGhxSWxGZ2doSEtoYVMw?=
 =?utf-8?B?SURDdFpQRVJwMXhvZWNNbmIyaXJWWjlFZThXdnd0d3VXVTJXWFRGejE3cW0r?=
 =?utf-8?B?eGdGa3BLdWtpMmZINjlSdVZRNng1RVBNR2Q1TkVrditqQVJhUDRlUzJhbzVn?=
 =?utf-8?B?bzN6aGY4eUc2SGR1SnhFU3YybGNwQ2NIMTQwY3E0NVNrQU9WZUhRbUwwZ1J1?=
 =?utf-8?B?V2V3dmJuRnNZUGhFVkJsbGl6eHdXcXYrWklEKytQQXJUa01GanNIcWhjQVFJ?=
 =?utf-8?B?YkhXOVN4aVV3ZzNhUWx3b3FzUzlTbXRweTJvOHg4b0RVOFFxWW1HUkdSQldH?=
 =?utf-8?B?MUJiS2h5YjQ5d21mV3NveDhnNUkwdFZ5cWRnSWE1c0piTWdkRkdWTUR2dHpV?=
 =?utf-8?B?a2U1SHliZlBOb0VnNG1FS2NsbGZ5T3FRdVZ2MlUwS21QN1FsMGpvVENScDRV?=
 =?utf-8?B?TTdQOUFGZ2hFZy9xVEMxMjVsNjRwRkJOazV1NnJ6ZWMyTitqKzR1VzgxS29P?=
 =?utf-8?B?SUZMWVFYdlYxc2lkVjI0dU9Qd1JicWl3bDFkck8wajdzaXBJUE1EU3d6RmNt?=
 =?utf-8?B?Qmt1WThEdlpxamQvRVlRYTFYR3dWZWZqQ2k1dVJTQUF5Q0JKNE9qRG1HOXR2?=
 =?utf-8?B?azBUTzBsM3FBNUp3cUZDc1ZEWWREdHo2YnMwd3AvcVRLOVJTQ1Zna2N0d2hK?=
 =?utf-8?B?WjVNcnRZUnNlcDd1RGVXUUVBd0pHbWdzZFR5L2hmemtGWmFXZ3EyUVBVaysy?=
 =?utf-8?B?UkxaOVdHSWJXbnhSeXEya29Wd2hTMlFSOFF6TFl0Tmcrdjd5TE4xeTJMTC9l?=
 =?utf-8?B?WElMN1dXYThWWGxMc0FBa0l6V3h5UFlMVTBIZ3Z6OWlNVnpjM3paaHBnOVVy?=
 =?utf-8?B?d0FTdVkvcTVyRlNrc3YrZ05PTVI2Y0I3WkNhZWxla1VJNjVqTkY2THhRL1Ft?=
 =?utf-8?B?VUVDdFRLRU9yV1dlWFZjYzFhMEFVbkZ2WlJ2RDdLcWxiUXhqVVJpeW5SOTJk?=
 =?utf-8?B?aWI2cmdzUVhLQUora3E4a1p3NjJ6WEVkTk1sQzI0T3ZxelNkNVZRZ29hLzdp?=
 =?utf-8?B?ZTVtRGZmL3JXSGJDOVBkRm4xa3h6Z1RtUk5JS1MzSzdrR1VUOVlnZW9heEE5?=
 =?utf-8?B?NnVMRHA5eEgza2JweVE2N1h1Ym5BRzZJMUFrLzlqMi9kVW4xT25jR0l3S0U5?=
 =?utf-8?B?WTRleXllTElmRlZlWjRldnpITlU5VDN2TFRNeU5xS3A0NldwdEtlbFlQN1d0?=
 =?utf-8?B?cmxIWjJTR2lwazgvSEp0ZWo3ZmlsMXdpamhYNjVwdUI2cXlaK29KVEJoem5Q?=
 =?utf-8?B?OEJxWXlvODh3K1A2MTZZQW9iTU5QZDFoTkRIOEtQc20wekw3RGx1d1A1dUFr?=
 =?utf-8?B?ZjNQMTlLdnNHUFNFemZsOWsyVzdxTWFWYWRJUlQyVE9TKzM5S1ZMQUxKbE0z?=
 =?utf-8?B?TGoxdmZKWjRMdHlOcWFMcjYxczcvNjFvL0R1QlZJWEwvc3crT0VsNlhiUnBD?=
 =?utf-8?B?L0l5VUhRaE5jYWdGMkNtaXFzTXBSb25CMUE0cGFaQkt1eGxaK0pSWVBNRFAx?=
 =?utf-8?B?cUxyR2xnbWhOdUlzeWpaM2hTTlhLcGtSTkUrYkNlSXlLcHNBdi8yYXhXL0I2?=
 =?utf-8?B?Q1g0UjJKRXBDRzZ5NGphWWlIbHJ3QWhWL3dQRFNaOE0yOS9aQ1dGUWdhSFBT?=
 =?utf-8?B?bm1IZTEwTGx5dW5DeENJclVkdnV5TUdLam1Kbkw0QTEreGszdWxUYmRqS0Vo?=
 =?utf-8?B?Ri8ydzhad3dPUGJrRTkvWGhkRngvL0o3Q29aY3o5cnJzNzVTNGdNbWU2d2hR?=
 =?utf-8?B?Y3NBaU52b1pYVVZoZEJQTDhwejBmd3FHZFE3Y1ZKQm4ycDJMcElMSWdqZmpR?=
 =?utf-8?B?S1VUSzNwM1E3TkJ0dkZsYVRnNllObmhpUFg1UmVnaGFIbTN3UStxcHAvbzlu?=
 =?utf-8?B?b3RReVR0eHhKRnB0Q0s3SWM1RzBRRG1tRHdVT1A4QTdTOFY5TER4aEVqYWFw?=
 =?utf-8?B?OEJCTWZmeWlZT3lRaFJNY21pYktWbWVPSTdra1JOQlAxRGZiNlpodVZlYmg3?=
 =?utf-8?B?VHdtRnBTTWRpVVQ4Mm9OWkRrazVDSjNZNjNib0lmUlkxTUpoZFRVTWdJN0dq?=
 =?utf-8?Q?8IT8iszmTApMtcvAdJ9DaHI/r?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cdbb133-198c-4da5-bb48-08db55313709
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2023 10:43:26.7844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wi+yKwBDWluI8PcycVAi9KVQ/FuZONWIYdZg3Cj+8DSOWV6/ZXG7u0TpBUqS9ZeTFJwvRjsq2yqqoSYYDBXv0p6jkLuLyr2n0/sp0FizJ34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR05MB8662
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tung, Can you please share your thoughts. I have responded
 to your queries in my previous email. Please let me know if you need any
 additional information from my end. Thanks and regards, Prakash [Prakash ]
 We are using iproute2 version-4.20.0-2+deb10u1 on amd64 platform. Our use
 case is very simple. We are creating/destroying a server socket based on
 some event usi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.127 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.127 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pyVg4-008JM2-UC
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC socket ( SOCK_SEQPACKET) cleanup issue
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Cc: Xin Long <lxin@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgVHVuZywNCkNhbiB5b3UgcGxlYXNlIHNoYXJlIHlvdXIgdGhvdWdodHMuDQpJIGhhdmUgcmVz
cG9uZGVkIHRvIHlvdXIgcXVlcmllcyBpbiBteSBwcmV2aW91cyBlbWFpbC4gUGxlYXNlIGxldCBt
ZSBrbm93IGlmIHlvdSBuZWVkIGFueSBhZGRpdGlvbmFsIGluZm9ybWF0aW9uIGZyb20gbXkgZW5k
Lg0KDQpUaGFua3MgYW5kIHJlZ2FyZHMsDQpQcmFrYXNoDQpbUHJha2FzaCBdICBXZSBhcmUgdXNp
bmcgaXByb3V0ZTIgdmVyc2lvbi00LjIwLjAtMitkZWIxMHUxIG9uIGFtZDY0IHBsYXRmb3JtLiBP
dXIgdXNlIGNhc2UgaXMgdmVyeSBzaW1wbGUuIFdlIGFyZSBjcmVhdGluZy9kZXN0cm95aW5nIGEg
c2VydmVyIHNvY2tldCBiYXNlZCBvbiBzb21lIGV2ZW50IHVzaW5nIGJlbG93IGNvZGUuDQogICAg
ICAvLyBzZXJ2ZXIgc29ja2V0IGNyZWF0aW9uDQogICAgICAgICAgIGludCBzZCA9IHNvY2tldChB
Rl9USVBDLCBTT0NLX1NFUVBBQ0tFVCwgMCk7DQogICAgICAvLyBDbG9zaW5nIHNlcnZlciBzb2Nr
ZXQNCiAgICAgICAgICBjbG9zZShzZCk7DQoNCiAgICAgIEFmdGVyIGNsb3NpbmcgdGhlIHNvY2tl
dCB0aGUgZmlsZSBkZXNjcmlwdG9yIGlzIGZyZWVkIGJ1dCB0aGUgdGlwYyBzb2NrZXQgaXMgc3Rp
bGwgcHJlc2VudCBpbiAidGlwYyBzb2NrZXQgbGlzdCIgb3V0cHV0Lg0KICAgICAgV2UgaGF2ZSBt
dWx0aXBsZSBhcHBsaWNhdGlvbnMgaW4gb3VyIHN5c3RlbSB3aGljaCBhcmUgdXNpbmcgdGlwYyBz
b2NrZXRzLiBCdXQgd2Ugc2VlIHRoaXMgYmVoYXZpb3VyKHN0YWxlIHRpcGMgc29ja2V0KSBvbmx5
IGluIG9uZSBhcHBsaWNhdGlvbi4NCiAgICAgIFRoZSBvbmx5IGRpZmZlcmVuY2Ugd2hpY2ggSSBj
YW4gbm90aWNlIGlzIHRoYXQgdGhpcyBwYXJ0aWN1bGFyIGFwcGxpY2F0aW9uICBpcyBzcGF3bmlu
ZyAic3RyYWNlIiB0byBtb25pdG9yIHNvbWUgb3RoZXIgYXBwbGljYXRpb24uIEkgYW0gbm90IHN1
cmUgYnV0IGl0IGxvb2tzIGxpa2Ugc29tZWhvdyBydW5uaW5nIHN0cmFjZSBpcyBhZmZlY3Rpbmcg
dGlwYyBzb2NrZXQNCiAgICAgICBjbGVhbnVwLg0KPj4+IFBlcmhhcHMgeW91IG5lZWQgdG8gcHJv
dmlkZSBkZXRhaWxlZCByZXByb2R1Y3Rpb24gc3RlcHMgbGlrZSB0aGVzZToNCjEvIE91dHB1dCBv
ZiDigJx0aXBjIHNvY2tldCBsaXN04oCdIGJlZm9yZSBjbGVhbnVwICh0byBkZXRlcm1pbmUgaG93
IG1hbnkgc29ja2V0cyBhcmUgZXhpc3RpbmcpDQoyLyBzdHJhY2UgY29tbWFuZCB3aXRoIGRldGFp
bGVkIGlucHV0IHBhcmFtZXRlcnMNCjMvIERvIHRoZSBjbGVhbnVwDQo0LyBPdXRwdXQgb2Yg4oCc
dGlwYyBzb2NrZXQgbGlzdOKAnSBhZnRlciBjbGVhbnVwDQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0
aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
