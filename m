Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 825E839A414
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Jun 2021 17:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dQT63QCq1Y4EKxKim86QYayqRn1RFTejXtJZA0dsB80=; b=g56HR07BC+wdRC/pP+i9Kt/EY
	8gWE0fRD4pw5WduLmDzopyBNh5DA178PbBYNL8xx/YyUZX92Op6Q/+8jD5NoHxprtbvauver+Rz8k
	TLsmAKTJIlYD1COEiX0eu0TzJIclKa8t+qIzdIRZ0srzXYg0urcpW8zKyf8otICi6HZig=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lop25-0000OC-6I; Thu, 03 Jun 2021 15:13:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1lop22-0000O4-Q7
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 15:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nFv7RxcFFDeakMmsJrfEYpAYsPtP+a8k8sXMPegq6cg=; b=eSvGE08d2sWmFO/LyYu26ECTxr
 9HAOujKHllR7KEonoeIKENmKVdgvYrTfCY1zWxbowqOKWNyA9FIHqAdwiAiXH//PVjKSKftGbff3F
 tIEIWvfVQoE5jf6lbkV3ys+20Cb03jDvLOdIW1dlawg7WHpXCqr93pod32tukAUPsexw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nFv7RxcFFDeakMmsJrfEYpAYsPtP+a8k8sXMPegq6cg=; b=ho3vF1r6zA3h2FQOukOU21KKzT
 P5Huk3F4dsWDqtR4addafkqVJgWRufGT3qgO//R47Zxjjl0qa1ZGmrPyx1rqV3dU5zwg8e+JGak+v
 yJqQVY9cW8iG7LvkBTOQNUOJyx3fWwFc+EvD/X8u0xkrAQeKFUF+wZO8Wz6QmFfDiv/s=;
Received: from mail-eopbgr00102.outbound.protection.outlook.com
 ([40.107.0.102] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lop1v-00970u-6s
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 15:13:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iu5zrbXqOSdn2OQlTOXFgnQ6Fn2dPVHZT1AUYNwxY/dfZXp06eCQ/LMFLd68iNbie/cCmD7FNwRIqhRtbaTL35so+8FnGBKK0KG0OuIt5nyap6SBBK0hXYIlhJYf5ASKt1GjL75tzvB1eDU/BOqAy96FDnxlEUTebXiAMyy0pGwCFsqgwj/7hfqLtxcyK592fvp+3z0zm7T2lpBuzC9EqCKRbkdIKGd0NQ7Hm9F8GM2hf9CN4pTPxqSO2x0SkJ11Ui2hIGdmXTaeDVP5IfqOES97J2pXnnrUeE7mDGNvIwJx+mNXoVZaDA6OMxt7eQjj7puIsa/EX86KC3lFEDz3tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nFv7RxcFFDeakMmsJrfEYpAYsPtP+a8k8sXMPegq6cg=;
 b=OhoEg+53CbQpnpuhvQ9mAgkz6jOsI/l599sl5b3J1fDiF0OuaE2LNe5TTi+gZ5cEOsYOGUTQSsrHK6jg3W2YMlNVu4OvYkcRu7lwcWZlpkS/BcYKAQupDc0b5XUg/jjC+Rzb7W+uxXA0ZKcehxkpmjDLBEZopzHtISnceNKRirr1Xyy1xe1lnW8vn8v3PTeujwz0nx3iXusoZ1dDlgo16yEFO/4SLYOLU3xySe+O1gk23N1sBWQsoFpWNQFKDHXrYZp3u82ZsYsj1zsWovsfKnzlPSzKVftANEVBsK0X0mmbr8ndlENxISULuDB8Wth8VD7xogUq4O30aIB4IsvIiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nFv7RxcFFDeakMmsJrfEYpAYsPtP+a8k8sXMPegq6cg=;
 b=bxd3wJJsA7NuYu+3zd8U/AzWcKLgiimSNNzoNnOdl9Q2V0N4Hvs0KVSFuURgLtlcSoNQnYh+k6KtEnzHAXfaCDmRoZDDmaTQw4DGk8nelQEwpDui9F3KcYXyYX7WTNlOIFef1VIcw6YC3XDr0mmK79BQlZLPslePf/LpTNF4/+M=
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com (2603:10a6:803:e3::17)
 by VI1PR08MB2656.eurprd08.prod.outlook.com (2603:10a6:802:23::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Thu, 3 Jun
 2021 14:57:26 +0000
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::3944:16d7:bec1:677f]) by VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::3944:16d7:bec1:677f%6]) with mapi id 15.20.4195.020; Thu, 3 Jun 2021
 14:57:26 +0000
To: Jon Maloy <jmaloy@redhat.com>, Xin Long <lucien.xin@gmail.com>
Thread-Topic: EXTERNAL: Re: [tipc-discussion] DGRAM/STREAM Crossover on Debian?
Thread-Index: AQHXUi25+IKGy3Es20iTN08hz5OBfKsBM4KAgABOyQCAAMX1y4AAGnGAgAAIIUY=
Date: Thu, 3 Jun 2021 14:57:26 +0000
Message-ID: <VI1PR08MB4192FDB222AC0BAFC6E06B30853C9@VI1PR08MB4192.eurprd08.prod.outlook.com>
References: <VI1PR08MB4192C92F9657055B7EF4530F85249@VI1PR08MB4192.eurprd08.prod.outlook.com>
 <CADvbK_dB_qqTcTryfRTRXnp_GnH6L5woyyyY_iikrsP_VuBRLg@mail.gmail.com>
 <a31bf399-7c8e-38c3-44df-c3ced7c55864@redhat.com>
 <VI1PR08MB41927531472FF499217E50B2853C9@VI1PR08MB4192.eurprd08.prod.outlook.com>,
 <d8cf99f9-1770-ba23-9f6b-34dc2a0e17d8@redhat.com>
In-Reply-To: <d8cf99f9-1770-ba23-9f6b-34dc2a0e17d8@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=fisglobal.com;
x-originating-ip: [96.227.140.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4067afa-9278-44f3-8293-08d9269fe707
x-ms-traffictypediagnostic: VI1PR08MB2656:
x-microsoft-antispam-prvs: <VI1PR08MB2656E8A6A5D63B4FB6AB74A9853C9@VI1PR08MB2656.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kLuhAgEU2Fbb2L+bHv+Y2Yg7OLk99nZcPpbT0qf+v2+JlTuUNs/M4avurWGMIrqTYzVaufqOwN1aiqHbGRWvjZHIWrHczD6pUmLyn4dFm7nJqcV5sX8llKW9KJrQO1trpmPTSW8G+iZgDCwiGhHMI/GyrDFdSh9o8wS5tMAJoSuMFWioQ2SIM5tFVxPITb/YujWs5UDhUbYXvhVrSTbL++v0w5A/BXoHXloYfP4evpsgbxkVorVk8IMb+UjTFTIuyNfIhMsZxlQOUz6OHdsm5ePRVGyNEeUJpZACSvu9UluxZxS1Yh5jc9tTfKPDjuEmvu1Ry8Kpvmnp54spBqLxkce7Bs/ymKI8fjEf50x5RE+UmPa1EnmsbM0fwW+3xHYzfH6Tv1hJhQOHLhjYv2z9hnfwif3OreBb2qDWv9EaBAJfIhNUAJZ90KesCifxCjbHFEhpdmRiA6tqU9fFqjSshvy0FMLEUtXZjNu5ynbjZhCQ9xYV4jZIGw1ZsN3kgInORN4jQBxFynAOOSbM0uOlB2QW50hcz4drOq8kcizwHAU5P99RKuDr64iK7FIOlHot7tpK0KSjAssFlxjEbsoVyMpzq+swy2+mSxYtmxP5QhfUBRk7O35QFybC/jGl7K9O0ADRmor1g0vNLNIjKsHuV25Yet6BSGepvqOmQ/yVBfGZeWVFu7H4VZuIqf5rXDHzcOUCYP3FGfalOlPt96awD/mo++7ig4SJJpVahrj0BmI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR08MB4192.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(39860400002)(366004)(136003)(376002)(966005)(166002)(19627405001)(8676002)(8936002)(45080400002)(2906002)(4326008)(52536014)(38100700002)(478600001)(122000001)(66556008)(66946007)(316002)(64756008)(110136005)(7696005)(55016002)(5660300002)(66446008)(66476007)(91956017)(76116006)(6506007)(71200400001)(9686003)(53546011)(26005)(186003)(33656002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?MUxWQWs0NHRvSHhoRGo3UFdvVVpoYlNsU2NjVU52S0VBcURhSnNwdWJxN0ZY?=
 =?utf-8?B?SFUxVHNZZm5Kd2NqQ0pIR2lzNklnVGpXOFRJcUE4My9jeEVxSGU1cmhnc2Vt?=
 =?utf-8?B?bnR2WEdlNjkvRE5rWTl3M1JtcUVyWWEvcXFMOVNsTmpzWFhDLy9SYk9QL0kz?=
 =?utf-8?B?b2wrZWxjL1prLy8xZktEL3RKUXArdy8xaXB0bmJIQmtXV1JIMDk5UjdYak9t?=
 =?utf-8?B?YU9tOS9DaExUbXYzU2UwNTViRjlSU3lDcXFlWERUMnZ2a2ZTTjA3SnMzQnhU?=
 =?utf-8?B?ZjZsN0VRK1htZVFiMnoyTGF2M3pUajNvNG83Q1dSdjhZWDlBSDV0N21YRVla?=
 =?utf-8?B?QUEzYWRnTnBWbURRV254enk3T0UyY2U3Z2hwWVNOMGVmY1k2Z1hQOStRTDNY?=
 =?utf-8?B?Q2JSckZOb0l2V24zY1YvZ1dwZW1VQS8xZmg3VVVkMFhYWm4wSkZ4V2dtbnNr?=
 =?utf-8?B?aUJPenVXcjFYNVE1K3Z6S2pVSmZRYWZaMVJReHdwZzlPSEdJbFRLdzRGeFBx?=
 =?utf-8?B?MXd2byt1NEIyOWxLZjFyWUc2c2xjYnlLZFRJOGMyOXRrZkVmT0d5V1BPaisx?=
 =?utf-8?B?ajJXeTRrSEh0L201bEkyTUl6UDlLMmdieERqdzc3OEhiaS9QRmRYUitYY2d5?=
 =?utf-8?B?bFpzd1VuVUs1Y01zNlFocS9BY0xYTXNmaVhyVFA5ZUNZakI0NmVzUHl5NHJM?=
 =?utf-8?B?ZWRRQ0phcS9QTlFQNDNsMllOV3R5SUZXZGhBejU2VE9xcHluZWpkYXF0R01v?=
 =?utf-8?B?MmdyRktrMzdVYWk3ams4czhtK0RXZERUQ0JMS2lYQTJ2eXYvcHNhUDFNM3Nz?=
 =?utf-8?B?RWdZdGdvbUpudHloK2Jiem5lSFB2TXY2SXRRUlhwTEFpZ3ZmQkovYUpCdzho?=
 =?utf-8?B?OE10RjFBVmoyYzFIbGFBWGczS0lvYVdCNU5DV3d2RXVSZTFQSC9FMUZhdVBM?=
 =?utf-8?B?RXI1dFA5UWtIMFRXZUIzQzJBMkJDTkxrTVk5UFFrbHFETU90N1AyMXY4VVoz?=
 =?utf-8?B?blV1ei9ZcFlmV2VpUFpNZ0lGa2NNTENqQ0RhUnB3RjdRczNXaDlWcW0vWHZB?=
 =?utf-8?B?ZGMrL3Iwd0V4NnNPcE5IWDRhcFI1K1NNRHcxVkI3WTZJenhRakNwU0VZbEha?=
 =?utf-8?B?Z0VSTFJpWXBDak9IVkpoc1JFUVNrY1RDRU82aDlEOGh2cUQ3eTZ3WFl3Qkhz?=
 =?utf-8?B?MFh5OWRzZXpnSDVwcG01MDhkOGdua0pTblAwNHZic2p1WUkyeVM4R0NYenVU?=
 =?utf-8?B?MWpRZUM2WjlOOWsrT2RlQjJaYTdUM2NzVVozSmFjMDVVNGVaMDRITUJ5MzZX?=
 =?utf-8?B?d01ITGR1aHBZN0NkbkRPUk40YTgwbU5venhXVXBEZHAvZ0pZZzMxRjBTQ3h5?=
 =?utf-8?B?RDgzV0hoQWg2cis0anVxYnNNQTFKKy9nS0xvWUQrMHVwR1R6M2w4K1RxeFQ2?=
 =?utf-8?B?WFl3WWdFbk5JZUZiQ1NNYU1mbnpmYURGbnRadmtGQVF4Ni9zZUJPM2NvNG02?=
 =?utf-8?B?bzBycWRjMDAyZXVpak00dlZHMDJPUWo4MWwvNVlRZ3BSMjlVVzM0MWRCeVhO?=
 =?utf-8?B?ZGN3SERGeERJMDVyVTE3MUR2SFlwdXdvamorU3hxRGIvQ0pvQWRhdkg0NVA4?=
 =?utf-8?B?ZTdZL0VEaXZGTDNzZ2N2MWZyaDcyOU1rbTV1dHZwT1Q0VDByWDl4aFJaQUM2?=
 =?utf-8?B?cDNRb3BZTUlTNVdHaEgzZUhtajJwcE5ZQ1NvRkIvTVZNRlgrWms3NkpoRmNO?=
 =?utf-8?Q?hCI+hCl7EJShZ/prjk=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4192.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4067afa-9278-44f3-8293-08d9269fe707
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2021 14:57:26.6970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kBcRBAJes7lHMNMRXWdledZqSS2xG84iitOPtT4bUY7zl/+7PlXe5dk/VglTDiLHRzxqAt7UwlmlhQYQDzSTmSf4KHe7mmOOqwYnqz8d9dQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2656
X-Spam-Score: -7.0 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.102 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lop1v-00970u-6s
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] EXTERNAL: Re: DGRAM/STREAM Crossover on
 Debian?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

DQpJIGNhbiBmcmFua2x5IGFkbWl0IHRoYXQgdGhpcyBpcyBhIHByb2JsZW0gd2UgbmV2ZXIgY2Ft
ZSBhY3Jvc3MgYmVmb3JlLCBhbmQgdGhhdCB3ZSBoYXZlbsK0dCByZWFsbHkgc3BlbnQgbXVjaCB0
aW1lIGNvbnNpZGVyaW5nIHRoaXMga2luZCBvZiBpc3N1ZXMuDQogICBUaGF0J3Mgd2h5IHlvdSBu
ZWVkIGNyYXp5IGRldmVsb3BlcnMgdHJ5aW5nIHRvIGRvIHdlaXJkIHN0dWZmIHdpdGggaXQuIPCf
mYINCg0KWW91IGFyZSByaWdodCB0aGF0IHRoaXMgbmVlZHMgdG8gYmUgYXQgbGVhc3QgY2xhcmlm
aWVkIGluIHRoZSBkb2N1bWVudGF0aW9uLg0KQnV0IHdlIHNob3VsZCBhbHNvIHJ1biBzb21lIGlu
dGVybmFsIHRlc3RzIHRvIGlkZW50aWZ5IHdoYXQgaXMgd29ya2luZyBhbmQgd2hhdCBpcyBub3Qs
IGFuZCB0aGVuIGRlY2lkZSB3aGF0IGlzIHRoZSBjb3JyZWN0IGFwcHJvYWNoLg0KVGhhbmsgeW91
IGZvciBtYWtpbmcgdXMgYXdhcmUgb2YgdGhpcy4NCiAgIFRoYW5rcyBmb3IgeW91ciBlZmZvcnRz
IGluIG1ha2luZyBUSVBDIGEgZ3JlYXQgdG9vbCBmb3IgZGF0YWNlbnRlciBjb21tdW5pY2F0aW9u
Lg0KDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHYXJ5IER1emFuDQogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBGSVMgLSBHVC5NIENvcmUNCg0KDQovLy9qb24NCg0K7pySDQoN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkZyb206IEpvbiBNYWxveSA8am1h
bG95QHJlZGhhdC5jb20+DQpTZW50OiBUaHVyc2RheSwgSnVuZSAzLCAyMDIxIDEwOjE5IEFNDQpU
bzogRHV6YW4sIEdhcnkgRCA8R2FyeS5EdXphbkBmaXNnbG9iYWwuY29tPjsgWGluIExvbmcgPGx1
Y2llbi54aW5AZ21haWwuY29tPg0KQ2M6IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQgPHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+DQpTdWJqZWN0OiBS
ZTogRVhURVJOQUw6IFJlOiBbdGlwYy1kaXNjdXNzaW9uXSBER1JBTS9TVFJFQU0gQ3Jvc3NvdmVy
IG9uIERlYmlhbj8NCg0KDQoNCk9uIDYvMy8yMSA5OjU1IEFNLCBEdXphbiwgR2FyeSBEIHdyb3Rl
Og0KDQpDb250cmFyeSB0byBVRFAgdnMgVENQLCBUSVBDIGlzIG9ubHkgb25lIHByb3RvY29sLCBz
byB5b3UNCmNhbm5vdCBiaW5kIHRoZSBzYW1lIHNlcnZpY2UgdHlwZS9pbnN0YW5jZSB0byBkaWZm
ZXJlbnQgc29ja2V0IHR5cGVzDQp3aXRob3V0IHJpc2tpbmcgcHJvYmxlbXMuDQpUaGUgU1lOIGJp
dCB3aWxsIHByZXZlbnQgYSBjb25uZWN0aW9uIGZyb20gYmVpbmcgZXN0YWJsaXNoZWQgd2l0aCBh
DQpzb2NrZXQgb2YgdGhlIHdyb25nIHR5cGUsIGJ1dCBpdCB3aWxsIG5vdCBzdG9wIHRoZSBiaW5k
aW5nIHRhYmxlIGxvb2t1cA0KZnJvbSBzZWxlY3Rpbmcgc3VjaCBhIHNvY2tldCwgc2luY2UgaXQg
a25vd3Mgbm90aGluZyBhYm91dCBzb2NrZXQgdHlwZXMuDQpJIGFtIGFjdHVhbGx5IHN1cnByaXNl
ZCB0aGF0IHRoaXMgd29ya3MgZXZlbiBvbiB0aGUgbm9uLURlYmlhbiBtYWNoaW5lcy4NCk1heWJl
IHRoZSBzZWNvbmRhcnkgbG9va3VwIG1lY2hhbmlzbSBpcyBzYXZpbmcgdGhlIGRheS4NCg0KVGhp
cyBjb3VsZCBvZiBjb3Vyc2UgYmUgZml4ZWQgd2l0aG91dCB0b28gbXVjaCBlZmZvcnQsIGJ1dCB0
aGUgcXVlc3Rpb24NCmlzIGlmIHRoYXQgaXMgdGhlIHJpZ2h0IHdheSB0byBnby4gQXQgbGVhc3Qg
d2Ugd291bGQgaGF2ZSB0byBjYXJlZnVsbHkNCmNvbnNpZGVyIHBvc3NpYmxlIGNvbXBhdGliaWxp
dHkgaXNzdWVzLg0KDQpXb3VsZCBpdCBiZSBhIHByb2JsZW0gZm9yIHlvdSB0byBqdXN0IGNob29z
ZSBkaWZmZXJlbnQgc2VydmljZSB0eXBlcy9yYW5nZXM/DQoNCi8vL2pvbg0KDQogICBJbnRlcmVz
dGluZy4gU28sIGFjY2lkZW50cyBvZiBpbXBsZW1lbnRhdGlvbiBhc2lkZSwgeW91IHdvdWxkIGV4
cGVjdCBER1JBTSwgU1RSRUFNLCBhbmQgU0VRUEFDS0VUIHNvY2tldHMgdG8gYmUgYWJsZSB0byBj
b21tdW5pY2F0ZSB3aXRoIGVhY2ggb3RoZXI/IEknbSBub3QgdXNpbmcgU0VRUEFDS0VUICh5ZXQp
LCBidXQgaXQgc291bmRzIGxpa2Ugb25lIG1pZ2h0IGJlIGFibGUgdG8gY29ubmVjdCgpIGJldHdl
ZW4gU1RSRUFNIGFuZCBTRVFQQUNLRVQgc29ja2V0cyB0b2RheSwgdGhvdWdoIHByZXN1bWFibHkg
dGhlIHdheSB0aGF0IHNlbmQoKXMgb24gdGhlIFNUUkVBTSBzaWRlIGdldCAicGFja2V0aXplZCIg
b24gdGhlIFNFUVBBQ0tFVCBlbmQgaXMgbm90IGNsZWFybHkgZGVmaW5lZC4gSWYgdGhpcyBpcyB3
aGF0IGlzIGludGVuZGVkLCBJIHRoaW5rIHNvbWUgY2xhcmlmaWNhdGlvbiBpbiB0aGUgZG9jdW1l
bnRhdGlvbiB3b3VsZCBiZSBoZWxwZnVsLCBhcyB3b3VsZCB0ZXN0aW5nIHRvIGVuc3VyZSBleHBl
Y3RlZCBiZWhhdmlvciBhY3Jvc3Mgc29ja2V0IHR5cGVzLiBJdCBpcyB0cnVlIHRoYXQgYnJpbmdp
bmcgVENQL1VEUCB0aGlua2luZyB0byBUSVBDIGlzIGdvaW5nIHRvIGxlYWQgdG8gZXJyb3JzLCBi
dXQgaXQgaXNuJ3QgZ29pbmcgdG8gYmUgcmFyZS4gSWYgaXQgaXMgc3RyYWlnaHRmb3J3YXJkIHRv
IGtlZXAgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIGRpZmZlcmVudCBzb2NrZXQgdHlwZXMgc2VwYXJh
dGUsIHRoZW4gSSBzdXNwZWN0IHRoYXQgd291bGQgcHJvZHVjZSB0aGUgbGVhc3Qgc3VycHJpc2Uu
DQoNCiAgIEFzIGZvciBteSBvd24gcHJvamVjdCwgbG9naWNhbGx5IEknbSBkZWFsaW5nIHdpdGgg
dGhlIHNhbWUgc2VydmljZSBlaXRoZXIgd2F5OyBpdCBpcyBvbmx5IHRoZSBER1JBTSBtZXNzYWdl
IHNpemUgbGltaXQgdGhhdCBpcyBwdXNoaW5nIHRoZSBTVFJFQU0gZmFsbGJhY2sgb3B0aW9uLiBJ
IGNvdWxkIHJlcXVpcmUgYSBzZXBhcmF0ZSBzZXJ2aWNlIHR5cGUgZm9yIHRoZSBTVFJFQU0gaW1w
bGVtZW50YXRpb24sIGJ1dCB0aGF0IGlzIGFub3RoZXIgcGllY2Ugb2YgY29uZmlndXJhdGlvbiB3
aGljaCBJJ2QgcmF0aGVyIGF2b2lkLCBpZiBwcmFjdGljYWwuIEkgZXhwZWN0IEkgd2lsbCBrZWVw
IGl0IHRoZSB3YXkgSSBoYXZlIGl0IHdoaWxlIEknbSBpbiBleHBlcmltZW50YWwgbW9kZSwgYXMg
aXQgc2VlbXMgdG8gYmUgd29ya2luZyBhcyBJIGV4cGVjdCBvbiB0aGUgdGFyZ2V0IGtlcm5lbHMs
IGJ1dCBJJ2xsIG5lZWQgdG8gYmUgc3VyZSBJJ20gb24gc29saWQgZ3JvdW5kIGlmIHdlIGV2ZXIg
bWFuYWdlIHRvIGdldCB0aGUgdGhpbmcgdG8gcHJvZHVjdGlvbi4NCg0KICAgVGhhbmtzLg0KDQog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHYXJ5IER1emFuDQogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBGSVMgLSBHVC5NIENvcmUNCg0KSSBjYW4gZnJhbmtseSBhZG1pdCB0aGF0
IHRoaXMgaXMgYSBwcm9ibGVtIHdlIG5ldmVyIGNhbWUgYWNyb3NzIGJlZm9yZSwgYW5kIHRoYXQg
d2UgaGF2ZW7CtHQgcmVhbGx5IHNwZW50IG11Y2ggdGltZSBjb25zaWRlcmluZyB0aGlzIGtpbmQg
b2YgaXNzdWVzLg0KWW91IGFyZSByaWdodCB0aGF0IHRoaXMgbmVlZHMgdG8gYmUgYXQgbGVhc3Qg
Y2xhcmlmaWVkIGluIHRoZSBkb2N1bWVudGF0aW9uLg0KQnV0IHdlIHNob3VsZCBhbHNvIHJ1biBz
b21lIGludGVybmFsIHRlc3RzIHRvIGlkZW50aWZ5IHdoYXQgaXMgd29ya2luZyBhbmQgd2hhdCBp
cyBub3QsIGFuZCB0aGVuIGRlY2lkZSB3aGF0IGlzIHRoZSBjb3JyZWN0IGFwcHJvYWNoLg0KVGhh
bmsgeW91IGZvciBtYWtpbmcgdXMgYXdhcmUgb2YgdGhpcy4NCg0KLy8vam9uDQoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCkZyb206IEpvbiBNYWxveSA8am1hbG95QHJlZGhh
dC5jb20+PG1haWx0bzpqbWFsb3lAcmVkaGF0LmNvbT4NClNlbnQ6IFdlZG5lc2RheSwgSnVuZSAy
LCAyMDIxIDg6NTYgUE0NClRvOiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+PG1haWx0
bzpsdWNpZW4ueGluQGdtYWlsLmNvbT47IER1emFuLCBHYXJ5IEQgPEdhcnkuRHV6YW5AZmlzZ2xv
YmFsLmNvbT48bWFpbHRvOkdhcnkuRHV6YW5AZmlzZ2xvYmFsLmNvbT4NCkNjOiB0aXBjLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0PG1haWx0bzp0aXBjLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0PiA8dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD48
bWFpbHRvOnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+DQpTdWJqZWN0OiBF
WFRFUk5BTDogUmU6IFt0aXBjLWRpc2N1c3Npb25dIERHUkFNL1NUUkVBTSBDcm9zc292ZXIgb24g
RGViaWFuPw0KDQpDQVVUSU9OOiBUaGlzIGVtYWlsIG9yaWdpbmF0ZWQgZnJvbSBvdXRzaWRlIG9m
IHRoZSBjb21wYW55LiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxl
c3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUu
DQoNCg0KDQpPbiA2LzIvMjEgNDoxNCBQTSwgWGluIExvbmcgd3JvdGU6DQo+IE9uIFdlZCwgTWF5
IDI2LCAyMDIxIGF0IDExOjM4IEFNIER1emFuLCBHYXJ5IEQgdmlhIHRpcGMtZGlzY3Vzc2lvbg0K
PiA8dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD48bWFpbHRvOnRpcGMtZGlz
Y3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+IHdyb3RlOg0KPj4gICAgIEknbSBpbiB0aGUg
cHJvY2VzcyBvZiBlbmhhbmNpbmcgYSBUSVBDIERHUkFNLWJhc2VkIFJQQy1pc2ggc2VydmljZSB0
byBpbmNsdWRlIFRJUEMgU1RSRUFNIHRyYW5zcG9ydCBmb3IgbGFyZ2VyIG1lc3NhZ2VzLiBUbyBz
aW1wbGlmeSBjb25maWd1cmF0aW9uLCBJIGhhdmUgdGhlIHNlcnZlciBwcm9jZXNzKGVzKSBiaW5k
KCkgdGhlIHNhbWUgdHlwZS9yYW5nZSBmb3IgYm90aCBER1JBTSBhbmQgU1RSRUFNIHNvY2tldHMg
KHBvbGwoKWluZyB0byBzZWUgd2hpY2ggaGF2ZSBpbmNvbWluZyByZXF1ZXN0cyksIHRoZW4gY2hv
b3NlIHdoaWNoIHRvIHVzZSBvbiB0aGUgY2xpZW50LiBUaGlzIHNlZW1zIHRvIHdvcmsgb24gbW9z
dCBvZiBteSBMaW51eCBzeXN0ZW1zIChSSEVMLTgsIFVidW50dSAyMC4wNC8yMS4wNCwgRmVkb3Jh
IDM0LCBEZWJpYW4gMTEpLCBidXQgb24gbXkgRGViaWFuIDEwIHN5c3RlbSAoNC4xOS4xODEtMSBr
ZXJuZWwpIEkgYW0gc2VlaW5nIG1lc3NhZ2VzIGZyb20gYSBER1JBTSBjbGllbnQgYXBwZWFyaW5n
IG9uIGFuIGFjY2VwdCgpZWQgU1RSRUFNIHNvY2tldCBvbiB0aGUgc2VydmVyLiBJIGhhdmUgY29u
ZmlybWVkIHRoYXQgdGhlIGNsaWVudCBpcyBub3Qgc2VuZGluZyBhbnl0aGluZyBvbiBhIFNUUkVB
TSBzb2NrZXQsIGFuZCB0aGUgbWVzc2FnZSByZWNlaXZlZCBieSB0aGUgc2VydmVyIGlzIGZvcm1h
dHRlZCBhcyBhIERHUkFNIG1lc3NhZ2UgKHdpdGhvdXQgdGhlIG1lc3NhZ2UgZnJhbWluZyBoZWFk
ZXIpLg0KPiBXaGVuIHlvdSBzdGFydCB0d28gc2Nva2V0IG9uIHRoZSBzZXJ2ZXI6IERHUkFNIGFu
ZCBTVFJFQU0sIGluIHRoZQ0KPiBjbGllbnQncyBuYW1ldGFibGUgdGhlcmUgd2lsbCBiZSAyIHNv
Y2tldHMgd2l0aCBkaWZmZXJlbnQgcG9ydGlkczoNCj4gIyB0aXBjIG5hbWV0YWJsZSBzaG93DQo+
IFR5cGUgICAgICAgTG93ZXIgICAgICBVcHBlciAgICAgIFNjb3BlICAgIFBvcnQgICAgICAgTm9k
ZQ0KPiAxODg4OCAgICAgIDE3ICAgICAgICAgMTcgICAgICAgICBjbHVzdGVyICA0MDYzOTYwNDE1
DQo+IDE4ODg4ICAgICAgMTcgICAgICAgICAxNyAgICAgICAgIGNsdXN0ZXIgIDExMDYyNTQxMTgN
Cj4NCj4gV2hlbiB0aGUgY2xpZW50IGNhbGxzIHNlbmRtc2coKS9jb25uZWN0KCkgdG8gc2VuZCBt
c2cgdG8gdGhlIHNlcnZlciwNCj4gaXQgd2lsbCBjaG9vc2Ugb25lIG9mIHRoZW0gYnkgdGhlIHJ1
bGUgb2YgImxvY2FsLCBjbG9zZXN0LWZpcnN0IG9yDQo+IHJvdW5kLXJvYmluIi4NCj4gVGhlIGNs
aWVudCBkb2Vzbid0IGtub3cgaWYgdGhlIHBlZXIgaXMgYSBER1JBTSBzb2NrZXQgb3IgU1RSRUFN
DQo+IHNvY2tldC4gSW4geW91ciBjYXNlLCBpdCBzaG91bGQgZ28gcm91bmQtcm9iaW4uDQo+DQo+
IFdpdGhvdXQgdGhpcyBjb21taXQ6DQo+DQo+IGNvbW1pdCAyNWI5MjIxYjk1OTQ4M2YxN2MyOTY0
ZDA5MjI4NjllMTZjYWE4NmI1DQo+IEF1dGhvcjogSm9uIE1hbG95IDxqb24ubWFsb3lAZXJpY3Nz
b24uY29tPjxtYWlsdG86am9uLm1hbG95QGVyaWNzc29uLmNvbT4NCj4gRGF0ZTogICBGcmkgU2Vw
IDI4IDIwOjIzOjIxIDIwMTggKzAyMDANCj4NCj4gICAgICB0aXBjOiBhZGQgU1lOIGJpdCB0byBj
b25uZWN0aW9uIHNldHVwIG1lc3NhZ2VzDQo+DQo+IFRoZSBTWU4gbXNnIGZvciBTVFJFQU0gaXMg
bm8gZGlmZmVyZW50IGZyb20gdGhlIERBVEEgbXNnIGZvciBER1JBTS4NCj4gdGhhdCdzIHdoYXQg
eW91J3JlIHNlZWluZyBpbiBrZXJuZWwtNC4xOQ0KPg0KPj4gICAgIERlYmlhbiBpc24ndCBhIHRh
cmdldCBwbGF0Zm9ybSBmb3IgcHJvZHVjdGlvbiwgc28gSSBkb24ndCBuZWVkIGEgc3BlY2lmaWMg
Zml4LCBidXQgaXQgaXMgc3RpbGwgc3VycHJpc2luZyBhbmQgYSBiaXQgZGlzdHVyYmluZy4gV2Fz
IHRoaXMgYSBrbm93biBwcm9ibGVtIHdpdGggdGhlIDQuMTkga2VybmVsPyBBcmUgdGhlcmUgcGFy
dGljdWxhciByZWFzb25zIHdoeSB1c2luZyB0aGlzIHBhdHRlcm4gaXMgYSBiYWQgaWRlYT8NCj4g
SSB0aGluayBpdCBtYXkgbm90IHdvcmsgYXMgZXhwZWN0ZWQgaWYgeW91IGNyZWF0ZSAyIGRpZmZl
cmVudCB0eXBlcyBvZg0KPiBUSVBDIHNvY2tldHMgYmluZGluZyB0byB0aGUgc2FtZSBhZGRyZXNz
Lg0KPiBBdCBsZWFzdCBvbiB0aGUgbGF0ZXN0IGtlcm5lbCwgb25jZSB0aGUgREdSQU0gY2xpZW50
IGNob29zZXMgdGhlDQo+IFNUUkVBTSBzb2NrZXQsIHRoZSBEQVRBIG1zZyB3aWxsIGJlIGRyb3Bw
ZWQuDQo+DQo+IFRoYW5rcy4NCkV4YWN0bHkuIENvbnRyYXJ5IHRvIFVEUCB2cyBUQ1AsIFRJUEMg
aXMgb25seSBvbmUgcHJvdG9jb2wsIHNvIHlvdQ0KY2Fubm90IGJpbmQgdGhlIHNhbWUgc2Vydmlj
ZSB0eXBlL2luc3RhbmNlIHRvIGRpZmZlcmVudCBzb2NrZXQgdHlwZXMNCndpdGhvdXQgcmlza2lu
ZyBwcm9ibGVtcy4NClRoZSBTWU4gYml0IHdpbGwgcHJldmVudCBhIGNvbm5lY3Rpb24gZnJvbSBi
ZWluZyBlc3RhYmxpc2hlZCB3aXRoIGENCnNvY2tldCBvZiB0aGUgd3JvbmcgdHlwZSwgYnV0IGl0
IHdpbGwgbm90IHN0b3AgdGhlIGJpbmRpbmcgdGFibGUgbG9va3VwDQpmcm9tIHNlbGVjdGluZyBz
dWNoIGEgc29ja2V0LCBzaW5jZSBpdCBrbm93cyBub3RoaW5nIGFib3V0IHNvY2tldCB0eXBlcy4N
CkkgYW0gYWN0dWFsbHkgc3VycHJpc2VkIHRoYXQgdGhpcyB3b3JrcyBldmVuIG9uIHRoZSBub24t
RGViaWFuIG1hY2hpbmVzLg0KTWF5YmUgdGhlIHNlY29uZGFyeSBsb29rdXAgbWVjaGFuaXNtIGlz
IHNhdmluZyB0aGUgZGF5Lg0KDQpUaGlzIGNvdWxkIG9mIGNvdXJzZSBiZSBmaXhlZCB3aXRob3V0
IHRvbyBtdWNoIGVmZm9ydCwgYnV0IHRoZSBxdWVzdGlvbg0KaXMgaWYgdGhhdCBpcyB0aGUgcmln
aHQgd2F5IHRvIGdvLiBBdCBsZWFzdCB3ZSB3b3VsZCBoYXZlIHRvIGNhcmVmdWxseQ0KY29uc2lk
ZXIgcG9zc2libGUgY29tcGF0aWJpbGl0eSBpc3N1ZXMuDQoNCldvdWxkIGl0IGJlIGEgcHJvYmxl
bSBmb3IgeW91IHRvIGp1c3QgY2hvb3NlIGRpZmZlcmVudCBzZXJ2aWNlIHR5cGVzL3Jhbmdlcz8N
Cg0KLy8vam9uDQoNCj4NCj4+ICAgICBUaGFua3MuDQo+Pg0KPj4gR2FyeSBEdXphbg0KPj4gRklT
IC0gR1QuTSBDb3JlDQo+Pg0KPj4gVGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0aGlzIG1l
c3NhZ2UgaXMgcHJvcHJpZXRhcnkgYW5kL29yIGNvbmZpZGVudGlhbC4gSWYgeW91IGFyZSBub3Qg
dGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlOiAoaSkgZGVsZXRlIHRoZSBtZXNzYWdlIGFu
ZCBhbGwgY29waWVzOyAoaWkpIGRvIG5vdCBkaXNjbG9zZSwgZGlzdHJpYnV0ZSBvciB1c2UgdGhl
IG1lc3NhZ2UgaW4gYW55IG1hbm5lcjsgYW5kIChpaWkpIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVk
aWF0ZWx5LiBJbiBhZGRpdGlvbiwgcGxlYXNlIGJlIGF3YXJlIHRoYXQgYW55IG1lc3NhZ2UgYWRk
cmVzc2VkIHRvIG91ciBkb21haW4gaXMgc3ViamVjdCB0byBhcmNoaXZpbmcgYW5kIHJldmlldyBi
eSBwZXJzb25zIG90aGVyIHRoYW4gdGhlIGludGVuZGVkIHJlY2lwaWVudC4gVGhhbmsgeW91Lg0K
Pj4NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
PiB0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0DQo+PiB0aXBjLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0PG1haWx0bzp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Pg0KPj4gaHR0cHM6Ly9ldXIwMi5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/
dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMuc291cmNlZm9yZ2UubmV0JTJGbGlzdHMlMkZsaXN0aW5m
byUyRnRpcGMtZGlzY3Vzc2lvbiZhbXA7ZGF0YT0wNCU3QzAxJTdDZ2FyeS5kdXphbiU0MGZpc2ds
b2JhbC5jb20lN0M2OGU1N2U0ZjIzYjU0OGY4MDRiMDA4ZDkyNjJhN2JlNSU3Q2UzZmY5MWQ4MzRj
ODRiMTVhMGI0MTg5MTBhNmFjNTc1JTdDMCU3QzAlN0M2Mzc1ODI3ODYxODAwNzE4OTElN0NVbmtu
b3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENK
QlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7c2RhdGE9Vk5FV1dTSjRldUcz
UXV0SWozTVhtUHBPSTU2dlBhc0p0Y2RGWU02MVRvVSUzRCZhbXA7cmVzZXJ2ZWQ9MDxodHRwczov
L2V1cjAyLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYl
MkZsaXN0cy5zb3VyY2Vmb3JnZS5uZXQlMkZsaXN0cyUyRmxpc3RpbmZvJTJGdGlwYy1kaXNjdXNz
aW9uJmRhdGE9MDQlN0MwMSU3Q2dhcnkuZHV6YW4lNDBmaXNnbG9iYWwuY29tJTdDNjU3Mjk2MjQy
YjQ0NDIyODc2OTEwOGQ5MjY5YWIwMGQlN0NlM2ZmOTFkODM0Yzg0YjE1YTBiNDE4OTEwYTZhYzU3
NSU3QzAlN0MwJTdDNjM3NTgzMjY4MDk0OTM2MTU4JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5
SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJ
Nk1uMCUzRCU3QzEwMDAmc2RhdGE9Y2xRbDM0djYzMiUyQk90S2ZnRWJMaDRINnhRRkF4Y3RJJTJG
UzlHeU8xMkp5bmMlM0QmcmVzZXJ2ZWQ9MD4NCg0KVGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBp
biB0aGlzIG1lc3NhZ2UgaXMgcHJvcHJpZXRhcnkgYW5kL29yIGNvbmZpZGVudGlhbC4gSWYgeW91
IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlOiAoaSkgZGVsZXRlIHRoZSBt
ZXNzYWdlIGFuZCBhbGwgY29waWVzOyAoaWkpIGRvIG5vdCBkaXNjbG9zZSwgZGlzdHJpYnV0ZSBv
ciB1c2UgdGhlIG1lc3NhZ2UgaW4gYW55IG1hbm5lcjsgYW5kIChpaWkpIG5vdGlmeSB0aGUgc2Vu
ZGVyIGltbWVkaWF0ZWx5LiBJbiBhZGRpdGlvbiwgcGxlYXNlIGJlIGF3YXJlIHRoYXQgYW55IG1l
c3NhZ2UgYWRkcmVzc2VkIHRvIG91ciBkb21haW4gaXMgc3ViamVjdCB0byBhcmNoaXZpbmcgYW5k
IHJldmlldyBieSBwZXJzb25zIG90aGVyIHRoYW4gdGhlIGludGVuZGVkIHJlY2lwaWVudC4gVGhh
bmsgeW91Lg0KDQpUaGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRoaXMgbWVzc2FnZSBpcyBw
cm9wcmlldGFyeSBhbmQvb3IgY29uZmlkZW50aWFsLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5k
ZWQgcmVjaXBpZW50LCBwbGVhc2U6IChpKSBkZWxldGUgdGhlIG1lc3NhZ2UgYW5kIGFsbCBjb3Bp
ZXM7IChpaSkgZG8gbm90IGRpc2Nsb3NlLCBkaXN0cmlidXRlIG9yIHVzZSB0aGUgbWVzc2FnZSBp
biBhbnkgbWFubmVyOyBhbmQgKGlpaSkgbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkuIElu
IGFkZGl0aW9uLCBwbGVhc2UgYmUgYXdhcmUgdGhhdCBhbnkgbWVzc2FnZSBhZGRyZXNzZWQgdG8g
b3VyIGRvbWFpbiBpcyBzdWJqZWN0IHRvIGFyY2hpdmluZyBhbmQgcmV2aWV3IGJ5IHBlcnNvbnMg
b3RoZXIgdGhhbiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LiBUaGFuayB5b3UuDQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
