Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AA773C19A
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jun 2023 22:58:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qCnr2-0001j5-61;
	Fri, 23 Jun 2023 20:58:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1qCnqz-0001im-LZ
 for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 20:58:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=arrobfQQfO6Jrun6hIf9lQhTRLSGXiBd7dAQ8sbfpPA=; b=nUTClDKMrVIlOvVzF1orA16ZtT
 oyHWUo9l5gEv55AgNvfWIZNPcUNP/Uj3sUFisWr1mVuAZcdcRPjVV7utOewWdgGYoUd4U4zgMHRj2
 Um/SEp+tellM9I+BSo8td+0ISMoM1d7ge8slCEP0sNa6wGRELjH22l+dshLWLnyZJJ8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=arrobfQQfO6Jrun6hIf9lQhTRLSGXiBd7dAQ8sbfpPA=; b=jLbEAfdEo55ts0qTdA4FRhgxFa
 FfErkR0a5/XKcSvZy+vpi1aykVnpGA2gp6C3gmeW/BRJgGua2sT8a/eZcnuKLD8PWd7pkI+4YIsgN
 NzECrQCxi4Kr6bDiBVdd6Q92hJDDXFB7cPt5w0T9dDvM2X2kb62pcLohH62lf4c/ORqo=;
Received: from mail-vi1eur04on2124.outbound.protection.outlook.com
 ([40.107.8.124] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCnqm-0001FS-BE for tipc-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 20:58:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BR3UM+YpFIgB1/tdlCJyBpGOQXyr047aF43PKqvoSwRRuePZ3BJB2Qu/ddvrCSWRoqRhLcEcV7/OzswswrlL8RklGObB8LrMADzT/SCjo7BpfBqDMr+6/m3ga6y1hD+O36kjU3kdwCYlHX9XM3OS41CI5Ogg6Bt1vbjqDWaxLwv6g/HA3Qyvr4z5m+Jco1MFIutdY4qLiCJiktTaFzmQkDFUAAe+v2SAyzLWU5iM2ePHOuEPkdZvEtxy8DD2pi5n+QGk4N18DgQV+cj1NJWhZ1o2jcq1W9uQdE1YdTizzEnrsob+2WigWv9NPCmkWX/124mz9A6LLqnykzl7fRVp3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arrobfQQfO6Jrun6hIf9lQhTRLSGXiBd7dAQ8sbfpPA=;
 b=k574ksb3mx2mszI8tP+7L8alwC5YA/V49WlXrsQXECtq/+CTeS2tlDl08VhFqgH8teN3h9FUmyW9fbnXCMCKAQwFcBVQvs9S/5A/5Mbj9sb+wRhXrLnS+eCiFyixlE41UU/ti4neKv0Zmb3t+Upkdo1uQ8VF1tUt+10iGSVL2agSAagUZ4NSPT0jbTK8STFMt6d+iMzJZ0bFU1yqAWgL+TXlMwG8u6+OT9w6PfZvV6XtZRG/cWUteT/xKlWuwHXjaRVGcQ3ydrc89dy539DCeBxmTG6dHTCRshTsP9ccfvQWe1ZZ+revQmRt982qJAN8UswXs39aWy9DeYLs1cm2aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arrobfQQfO6Jrun6hIf9lQhTRLSGXiBd7dAQ8sbfpPA=;
 b=Td+aP+2tMZI28Tbr7DoFR4PVzYmS9rMgcMbRTXCS9dFlyNlNSgyT6JyIshfmtIOYqayIUJV2G655hiWyPbkKMBr0cKyjC1jvIIV0oY2Otudx7cWNIXi8dXTzOjrkhCJwoDfktWdDDIe/wRXZRZmKBURBH5VVQuJUiMSFAx7CbGBUVEshlBxKPOW3gQKTSjhTg4ipUKsvCZckH8HileM8z4wp/2Yd+dqpQoVakP2k4ojFxfte42pKfCXZbrDqGBaQQY0u/OVAZ/WIXPS5Px2LjMD2wcGJ/0QK8F85N3Iu/sY8eLtf11oHXpceRs6GRdfXUrWH/5psrWGF0p4FO6sJQA==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by PAXPR08MB6399.eurprd08.prod.outlook.com (2603:10a6:102:158::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Fri, 23 Jun
 2023 20:24:08 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664%5]) with mapi id 15.20.6521.026; Fri, 23 Jun 2023
 20:24:08 +0000
To: Rune Torgersen <runet@innovsys.com>
Thread-Topic: [tipc-discussion] TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAAVc4cAApe8p1AAfPWUAAP7e9gAAA4nAgAABVvxs=
Date: Fri, 23 Jun 2023 20:24:08 +0000
Message-ID: <AS8PR08MB776790384124D17DE3917F368523A@AS8PR08MB7767.eurprd08.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19952E3D395722E4B1198CF8C422A@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <458eec75-58d4-97e1-ffe4-2fe9a3c9e8c6@redhat.com>
 <DM5PR1301MB19950FDA786A083190E43FCFC423A@DM5PR1301MB1995.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR1301MB19950FDA786A083190E43FCFC423A@DM5PR1301MB1995.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|PAXPR08MB6399:EE_
x-ms-office365-filtering-correlation-id: 0f8736fa-2e19-4909-a960-08db7427cc84
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CAb0V3YRGiavXYV0YyzEBq8hKl/alXg/PHUTVaFb57HhvFmJ6fZh0mRMWU4KtpFoAFYGnKoGjXqsYMfrT6Oz1GBvgMfGJChTCs08MFATHJPKKg7/jolhcib0Oq4tfqGhilqQrLXFqoVviqEHdZrlYzhLyqliCEnSyO1lWWkAbj+EsjkCcjiO0KN6RkKRjTEm92IDjlSijXT4qn4yhKJbRmPK3ptOuifNTJC7QGZnYnTRFawW0W2xR5w10RpJAULz1GAKoVx2jImvjQFfbmoiJiVJRZb3RXHc2AgVyGnxqG1T5PK017jQyi/OpAwLICXTHiv0hdYj1SZvpfeU5X5kfNwh4YVq6SeSg19tn+QwV6+Oa8YRdWTv13VPEyXC4GrOeeRZ0qRZHSmmnuijorgS2AxFQXnOAKhZF1qHT0b8wV7VzR7R0acUlbtVQpKGbyLc2VmBp1HeWZcCdGV55MEGI6kdijizhKGYmhHN0iKdv2L37wtzIGCbK+jM9SCBi1hMxvquqTFPgDZ3RdTX0jVuO5z7bIqtvi+bY8cXkldNTpZM0dD6BxY8ZvBr8qAdEWADjqMMSIHjVkppvW/aZYZJ9slMtlDgMr2zrDBD+nNzfQ0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199021)(15650500001)(19627405001)(40140700001)(66946007)(76116006)(91956017)(8936002)(6916009)(66476007)(4326008)(8676002)(66556008)(64756008)(66446008)(33656002)(478600001)(166002)(316002)(5660300002)(52536014)(6506007)(55016003)(966005)(54906003)(41300700001)(38070700005)(45080400002)(7696005)(2906002)(53546011)(186003)(26005)(9686003)(86362001)(82960400001)(38100700002)(122000001)(71200400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?t/RPcgz12lQKfcr7Ozm9C1sPABRUSAzGCs7toP+IMzISWe/TbwXJpTsm?=
 =?Windows-1252?Q?NeovUXsa3jItH9wm8TqCgnh+Pi89NgWXAES9Be2QvbvWvvVn2asu81o4?=
 =?Windows-1252?Q?M0awhAXNvmZ7xeahi6gh9AWcf1Oyt31m/X6zi0DbLxErtgU+9+kHlmZ1?=
 =?Windows-1252?Q?WzZBZ8N25bLJbqFaHkLx8m9/fOGgHAvbmHV8tLwvZYEw1bOQo4HjR+7q?=
 =?Windows-1252?Q?xKxyu22WvGMWdQeyHif5WG/2ITe89oUjL//lvfLlepkgcYLM7VIbWdAf?=
 =?Windows-1252?Q?wvrLK9e4qo6FlPyeuowdYSj8JwLhsCJUQ6UWzPkoY0pKycfZsT3zTliG?=
 =?Windows-1252?Q?9DeKqZZqG21gd8ehyjvB9nCC+TY1mj1CudXogusHdj/jGizNNUI0MGH3?=
 =?Windows-1252?Q?4v1btZRXdJOEUekJ5aykHwCSlkll2p/jzp21Olciooue9yjTrNsnivEu?=
 =?Windows-1252?Q?SEr9jP5NLrHMPrk+mi4psuGz4dNhI3W+wm14mVGlBcdv3+fC32rEwbiC?=
 =?Windows-1252?Q?J+A8SlIZYBPz0oF1qS83oozpl0l03NImb8y9Ua5OEUbvgFO969ukd9xN?=
 =?Windows-1252?Q?P+XdW1mV9A6QWEgTDh9ybbMFybzauUZGNl+/wJKHWrQb6AhHB+DI6Gr6?=
 =?Windows-1252?Q?inwWFzAcKxnwwY63aJu10mAfOfF0NHH2M12zkEtO1bL2h7NGw7u8WAKO?=
 =?Windows-1252?Q?A+ysf1L5vY16tPEjoq2icdsrOUZKXga0VCsrph+CIX8i8elUR/pR1fKW?=
 =?Windows-1252?Q?DAvYMNPT9IUbHmGXBJp2Hd5cgBNCo3q/eduwakoHyqacvdZuIwMk37oI?=
 =?Windows-1252?Q?3ZM/Rg8b7Dxucy5I1r4iangtofEHuZsYv86BYNetzD5WbEjKpUtnuIIu?=
 =?Windows-1252?Q?WefIqVvKhgHxAbSGbRxmh9Cx/Ts51q/Lw2ppYvMMb0CIRkHkgETItjbF?=
 =?Windows-1252?Q?fP+aU4OnRJkZ7iCqbBJpry02t0SKUQ687uVw9tb75rhEw8YRSocjvaRE?=
 =?Windows-1252?Q?QDnEDqlrVP0Wg0wbZzXxhdGYvy4dDHaVEqM/rxEddHtFcRWKY0S1Cma2?=
 =?Windows-1252?Q?ro0LTlIp6f3W6PXeNBxVxtT0UYvS2Dt5zQIZStyT3Rp96NfbULhrstyu?=
 =?Windows-1252?Q?hr3MOkx0A5+wvDmsewdYctFEJAQe+ENabcb5pSnsOwD/d1XdwQW4W2Hg?=
 =?Windows-1252?Q?vzZGwNSR/rnfE5plChQKE8HvbB0gyaG9NxL9j0k2Yau/Z9/6RM5BfWot?=
 =?Windows-1252?Q?XorL7kPRuA0bNyJ4vq86w3uBQd/pUi4KXwL2Jy7Ou1ekjJ4qj5h0vIYr?=
 =?Windows-1252?Q?SN8kz5wMGNil38bJ4WxeYA22qSCu7E7VIB7WN3ZUFA8BAG52c/QkU7xv?=
 =?Windows-1252?Q?5RnycBgFbVIkikaCvp6ENvmqdqzZO/9Fet2FH6WxaUZbrdyjayD86heX?=
 =?Windows-1252?Q?3hTlgoGfsDctnEt4jSRM5tRflJ7AIs2hsFSwUA1mMR8PFYCZCcZhxnc6?=
 =?Windows-1252?Q?YQMY2LfKQyIEZ3GzwT6Bwlnm4dxLDE30EArR/0wATn11ny/8ofRnM1Cr?=
 =?Windows-1252?Q?S8jHczUCgfYoW//o4LcB2tHWE3qq80MgbZyU3JRvUu4rIIxXNSLRrItS?=
 =?Windows-1252?Q?PhxXplfnz6IKNk3Y+Ew9SgJsoNLbIT9bxHJcla38rmz5GdTpOoptCDWf?=
 =?Windows-1252?Q?x4wFy6alFjzq3DWaWgS5ySv/IxICV/aD?=
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f8736fa-2e19-4909-a960-08db7427cc84
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2023 20:24:08.6533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VsJJq7xswQbzrL6S+XiOz+xKrIuDBtZu0XM7+F8N6zGCOTO3/mNc3uTiXrN/698UWrx9u+yoF9MpzE5UMw85SpHLVONJ2xX+VlBDmVnbKJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6399
X-Spam-Score: -8.3 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I see in your sample code that you are using recvfrom(),
 but with a NULL address. If you instead pass a pointer to a struct
 sockaddr_tipc
 and an address_len of sizeof(struct sockaddr_tipc), a success [...] 
 Content analysis details:   (-8.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qCnqm-0001FS-BE
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC out-of-order publish message
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   I see in your sample code that you are using recvfrom(), but with a NULL=
 address. If you instead pass a pointer to a struct sockaddr_tipc and an ad=
dress_len of sizeof(struct sockaddr_tipc), a successful recvfrom() will set=
 it to the address of the sender, which you can turn around and pass to sen=
dto() in order to reply. I'm using this in my own code, and so far it has w=
orked fine.

Gary Duzan
IT Architect Senior
GT.M Core Team

T:  +1.484.302.3226
E:  gary.duzan@fisglobal.com
FIS | Advancing the way the world pays, banks and invests=99

________________________________
From: Rune Torgersen <runet@innovsys.com>
Sent: Friday, June 23, 2023 4:07 PM
To: Jon Maloy <jmaloy@redhat.com>; tipc-discussion@lists.sourceforge.net <t=
ipc-discussion@lists.sourceforge.net>
Subject: Re: [tipc-discussion] TIPC out-of-order publish message

> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> On 2023-06-22 09:30, Rune Torgersen wrote:
> > I can easily make it happen with known service addresses too.
> >
> > We have shortlived processes that does a query:
> >
> > Open 226 1
> > Send query to 226 2.
> > 226 2 sends response back to 226 1. - Message gets dropped.
>
> Is there any reason why you don't use the received messages original
> socket address instead of its service address?

Basically because we did not know you could do that. Will have to look into=
 that. Is there any example code for that?



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.s=
ourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&data=3D05%7C01%7Cgary.d=
uzan%40fisglobal.com%7Cdb99e789c7df49b57f3c08db742596b3%7Ce3ff91d834c84b15a=
0b418910a6ac575%7C0%7C0%7C638231477021853799%7CUnknown%7CTWFpbGZsb3d8eyJWIj=
oiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7=
C&sdata=3DEwRsvge2GyFWYIoLAMhh2KT%2BV3x0x0Oe4FGxxfxQPTo%3D&reserved=3D0<htt=
ps://lists.sourceforge.net/lists/listinfo/tipc-discussion>
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
