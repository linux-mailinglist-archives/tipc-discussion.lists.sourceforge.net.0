Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0995548BBED
	for <lists+tipc-discussion@lfdr.de>; Wed, 12 Jan 2022 01:34:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1n7Rah-0004Lf-6h; Wed, 12 Jan 2022 00:34:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1n7Raf-0004LZ-5i
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jan 2022 00:34:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v423jITtnkfBFbaPeKBSqlsMrKszXeS2BrHZNQuuT7c=; b=gMAgEUd6vAwHQxzx8BOv2t/7KG
 F6hBLmbbQ/AogA6vfYEQe6U+3CDEs8cr6pAaLkewKIiGAvvE/7j05wVtTLrG52mAzGN6llAX2aR6/
 064MGOTS17Xm0s6c64hivDLhg/xoCbt2eLDtCSe26O6vMq9YISV4yA/nZ6/Piw3RAy5w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v423jITtnkfBFbaPeKBSqlsMrKszXeS2BrHZNQuuT7c=; b=R
 JA9QlseEocLAgX+NMvddrq8wQaOXSUEM/XVv8ApgdBDnlXP5+mZmXmKUy43vWOsEhrMT1erZRvR9a
 EvEecpq1DP5Orb8Zm5iyd9By7CYyZbPzH5lCfBat6g4X9wIEDLuWw6IWWCsURbWu0s8cF3hhsCwk1
 muqz03I05no5DUa0=;
Received: from mail-eopbgr140092.outbound.protection.outlook.com
 ([40.107.14.92] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7RaU-0000Yq-SJ
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jan 2022 00:34:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xni7x/HI4RpS73TRELyLoRz/nvvu4bk50AVz9q4kTgHgrgj7mVDOuBklbysqsXgO22YSleKW7muUWPH6x37Kbv1oqmnLaQgUBluIuBip5Z4M/TUsgeBvTFM53n1tWXYTXVsSnur1RkVv7uL4PwL2E1QvF7cin33ehtsWtCCSg1GAm54FBxkBngv/McqlclZhneovaxV/xPrYrZZVNmB/rlIPHGtbCHb3zY6bEtiga4gN/rDA45OIXrvYD61hUCY1OPwOFBfvRSzXqLK4cnP15oF3i3CloCJWfP00qAzgIoxZ5cG5NlCxQzcDS29yDxmyS/mPKCm5mw4cwZkTcNh0BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v423jITtnkfBFbaPeKBSqlsMrKszXeS2BrHZNQuuT7c=;
 b=mhCN0u2OgA2rh7Ui/R9Ph85/NOroj/8iU3LBWy48ohbSP1pOKXDhqKVpvjtL0vKQEOLSfyAwifMAQSYqa3otxZ5PfXwynfbgSxxiiqKq/IORmjCjzI9khl6tbaBhjbYAEldZI4q7t8zr6AEO6hVdmanM1OrKVJJZLyPbvOGpsl6hY6XVqSu6tjVhjv12C2VaHgZfXReLbdT6zPnPa8t4eytEZxCsm2YI5An1NVUD8Zt8KbI9HFoVPr0kukh0AKrpFRo8QgEN5DkvfYsVM283iWVUIkZ/n53+3QF4A5KfYYhRD5nz4qSOkhp99Ux8kgXdCqYq/ZZI9wgfdrekYzK34A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v423jITtnkfBFbaPeKBSqlsMrKszXeS2BrHZNQuuT7c=;
 b=FZrKrDJS7cnQT8HpLDG7T+mRftaoVU9JHY+PqXuPyFpVxMoBayuVnzHndwvV8hgb0ERznNBEfslEpbt4LbXj3pCIF0Hm4O2o4dwCC1yRDeJQS8MmWSkwIpj1WQgRxGfixHDkvcnsHANgRvEudXK3jVl1hRMOVXhMR576gKtq4A0=
Received: from VE1PR08MB5583.eurprd08.prod.outlook.com (2603:10a6:800:1ac::24)
 by AM6PR08MB3093.eurprd08.prod.outlook.com (2603:10a6:209:41::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Tue, 11 Jan
 2022 23:01:19 +0000
Received: from VE1PR08MB5583.eurprd08.prod.outlook.com
 ([fe80::3c93:911f:75d6:33f4]) by VE1PR08MB5583.eurprd08.prod.outlook.com
 ([fe80::3c93:911f:75d6:33f4%7]) with mapi id 15.20.4867.012; Tue, 11 Jan 2022
 23:01:19 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC Socket Liveness Check
Thread-Index: AQHYBzwDbbBVOr8WEka4LdW3k5Tr4A==
Date: Tue, 11 Jan 2022 23:01:19 +0000
Message-ID: <VE1PR08MB5583B828DAA9C4004AE3C56685519@VE1PR08MB5583.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 49aba132-d831-6002-be3b-b347c167a6ed
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e0deb20-99e0-45a7-6e1e-08d9d5564792
x-ms-traffictypediagnostic: AM6PR08MB3093:EE_
x-microsoft-antispam-prvs: <AM6PR08MB3093DCA6EF4100636E0BA76585519@AM6PR08MB3093.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IfW82sBdsoOpRt64lASTC3lMQ+biMuX7Wj2q1M+LX05dlEmqzngLmj00JCBBT+mlmV9Y0dfMZM5HmpwE1PP8eZV07Ecfea4kgel21BKm1kenvz14fX+qxhuUM3WlMmO6v4ljifMQC7kIj8/WdJ95GlwvkVkDg9KAdzvAoucYOx/7yfU7Eth8kHU2yTZv4SqkheOrh5CEDzE9dVdw0t7PQX2G0rkXVJJKUikVs0RcVPis8KzrAg6f4XWjcMYY4MBv8HEKnSsnzei8MDr12nhoE1ntONI4hcytnRQrwNDWMdvvKImLiYBS/UtZZEXFxiOnxhgEnrg3LjAi2bWkMjXkGUGEls61LoPvEkgGPBQtpl6pcwalkaDZ5WcpQTUupZq9CygWYVVt5BeYhpdiUkq68REgcLmJNca8Yh29GNicSJyahD+OYLfD76FS84exP+Os4tDJOHEXSu1VLdbivV42APGWMOrY98zHixQZkhfw95bqRU/KqT5ONlkh0XaUpoTKo/skwGetrgQDvUDHwk5d0J/FMDFQu3gbyTfNu3VxrRFMvkRqMIdY2gmyZ8Aoze4UGe239ipGvwh2dT/HxDVK5rzzEo/WeTEmFrxUvkOt3AOK+svL8qs+kEACYWx+zmgwbRxc4IxDldKfBhaSQm7r5oUVQvkuu88NBoR2pJzenS8iWabU7TogV33rk2B45gItX30vMSTGFjvJ+4Qe4w15Gg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR08MB5583.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6916009)(122000001)(2906002)(66446008)(4744005)(82960400001)(64756008)(38100700002)(66476007)(66556008)(66946007)(55016003)(316002)(71200400001)(6506007)(26005)(8936002)(83380400001)(8676002)(38070700005)(5660300002)(33656002)(7696005)(9686003)(19627405001)(52536014)(186003)(76116006)(86362001)(91956017)(3480700007)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?b1oWFFGlMR+uzsWKGgqe4s+TQjJsnvuN5DdwU6V6xv8kvcuf12Twuv2Seg?=
 =?iso-8859-1?Q?wYgdXwopgnaQ1cKXUntzK88oJ0FJ3Ao++EUm/7t7SI8o5E3oIqzgRHRHT1?=
 =?iso-8859-1?Q?mA8TzRW+z+MoQbmj3Cxxoity7WHjf+6H6LgolIGWyTKRYkcaB8xMhwk+Kh?=
 =?iso-8859-1?Q?1kZgDwd1YyJHmtOkiNGPKAJbetfETDbgbz4aWn8pZ7w9mlwfNI2Hzre9FU?=
 =?iso-8859-1?Q?PpPE3oenmLwcxyARd4ZAPl+XtDbuZiygMbTw+VCwx6ysIH1uvkjDuhdovE?=
 =?iso-8859-1?Q?juEYDY9/Hm8RosflD799xLISoPySUYJ+GnnhoHUhVzI1s+P1iTOpIBjOIY?=
 =?iso-8859-1?Q?bxchjkZQvM51ovbT3WsPMCK2u69ZAZofqjlmsp33qtwKbPysDhNO5dPauG?=
 =?iso-8859-1?Q?4Zft3K9dVeuegThy5H7896trwKBDMKWWKZSLY2JkYuzP9aFmEgLhzcwL8E?=
 =?iso-8859-1?Q?NxwQGsLlwuF7UoKuC+Ne/z2j67LUznLxNi9s4PfIOFQ1cE16i7VkycaAx5?=
 =?iso-8859-1?Q?gmWLpQVbu3aU3IGzwydkBdS6JOyTG//F3H4gGG1JI2Ns4d6dx03ygDPHRj?=
 =?iso-8859-1?Q?bR+sFIsNxn3JIB6mA+bXUWTo+0dWVZKSFkh3Luz/luF8CSPrd3Eoq/oiis?=
 =?iso-8859-1?Q?YvsOdJzOldXrPsvRg334jpkTaUiRuat2VIdfUq7BZI+wIjDQG7RXT5Msb/?=
 =?iso-8859-1?Q?Wv4q7XuCPAB5fOYpp9wVz6YEo/SEqNfc0WnDyr4hFj9b3SO59dvllKfwXN?=
 =?iso-8859-1?Q?MnRkD6ZJ/WXQByQpuM0mVopjrciwjqZVcgQ6HYWgkMXhLo+u1Y/llxLGRT?=
 =?iso-8859-1?Q?b5wsbzONDZZJg+/GETtILyDpeu60UMB8vuI2rPZfM1QYQbHuuacRNO9i5O?=
 =?iso-8859-1?Q?8wiiaAPIuKTitujX5366u9FT5yU2SJpnuzuVXK0Ru76PefX1O8bj1+je5X?=
 =?iso-8859-1?Q?Y4FKdYOx/yKvS1osRriJLJYErWTfnlUwISmryqeZlmopjemmGKcf9QMjWg?=
 =?iso-8859-1?Q?nm1TuEZ/PVhFRnTPS4rdBBWFrlQ4ykWSdpuRIxNpzv4CMPcz5HyzqYj/59?=
 =?iso-8859-1?Q?KpFJaScJNjTR+8fb3/OXEn3FoLPUiP0ONSilC9YTvu8/pXvHFDK24RSt3P?=
 =?iso-8859-1?Q?EJX+Dv+oVAZpBxGLVPqj/WqTQFHSrh0s1eVmaKn2Fz8spKFhYjTDr5ZCi5?=
 =?iso-8859-1?Q?uhXVIqj1ssA6F547qmjRC8zLEvIHx9wm/rf4M2dxr+bd9FgxbArq1ADKSp?=
 =?iso-8859-1?Q?AsPEz1O7csYSNR8HjwDt2Hzempq16uwiLFXawEAEyNdyRmjhci3+NwydeX?=
 =?iso-8859-1?Q?tFq+CXVPmKTLiI8MBuJLc8cnA90oHLEILZOyQvhTfY/RgPkXSNb+nuS0GM?=
 =?iso-8859-1?Q?/wUAHmCPO/d+PO9vZT/d4Om8JqIW+dAuxQRw5lcfEXghOck9/6+KXGtUra?=
 =?iso-8859-1?Q?sejgXR6CDtFUTDSFRaez4f8RTuafxVlIkWbBUo+HGZDM+VGgfq1H3XPZeE?=
 =?iso-8859-1?Q?FPrcJWuYmU/nAYIxJbQZNXfbOChanKu58dqmoWYV/Yz3XMvOVwCJgXMudt?=
 =?iso-8859-1?Q?hKLPhVU4uheLOmIPenxKe5zN33BWwRHUh0UaSLXbfJUrzr8K0HDNrUtls5?=
 =?iso-8859-1?Q?mQWGrxqaWGYTjIYcoZOf8ySng29opebNKV1hiS1LnSZdaJKNAtlAjOhNYP?=
 =?iso-8859-1?Q?b/30meH+9PpNX2JLe6z57JTHqz0KzhinZCHjd54d8kjm170pxQuboen6hW?=
 =?iso-8859-1?Q?XTmw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR08MB5583.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e0deb20-99e0-45a7-6e1e-08d9d5564792
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2022 23:01:19.3750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f30JIYO6pwhQD8+KQVTyaMZqG4DLe/3qFjlvzBCVA3yVKOiobFvoXVzvAGm1cu+YSL/J8o5+meQdU2xRHXqRPvwOTM0EJ2QVA9XUS4fVCII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3093
X-Spam-Score: -8.4 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Is there a reliable way for a process to determine if a TIPC
 socket address points to an open socket without disturbing the target process?
 I'm hoping to be able to determine the liveness/reachabilit [...] 
 Content analysis details:   (-8.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.92 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.92 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n7RaU-0000Yq-SJ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC Socket Liveness Check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   Is there a reliable way for a process to determine if a TIPC socket address points to an open socket without disturbing the target process? I'm hoping to be able to determine the liveness/reachability of a datagram peer, at least roughly, without taking on the complexity of additional messaging (or group membership and join/leave tracking).

   Thanks.

Gary Duzan
FIS GT.M Core Team

The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
