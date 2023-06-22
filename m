Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 687BE739DC8
	for <lists+tipc-discussion@lfdr.de>; Thu, 22 Jun 2023 11:53:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qCH0H-0008JC-U1;
	Thu, 22 Jun 2023 09:53:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1qCH0G-0008J0-Eg
 for tipc-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 09:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nHT+kADBNK6blWHOmx1GVSpUgrUe7KDvxclVX2eQmK8=; b=Ra3BCne2VL3G3zgm22EEDVQWy6
 IJhjuKRlAUx7W6Y2X3VYIIxM8keRFD/TNeqs8/Fp8NA6EewmaBj6Je4dpJeq678CF4K36BtBW/wFa
 JSzUFWa3/7aHGaW0ireEoXhT8Djc2D7TSTfssTxN0YZ2BgPNnrRJbDDbmDBnOADyKtkI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nHT+kADBNK6blWHOmx1GVSpUgrUe7KDvxclVX2eQmK8=; b=ICil7Ae10WiMZG6/lTMUhBovz7
 keCmdpfz6BAFiX1qoSdqrUFGyHBxYqF0ux/+wr86OqJC2tKTEAERcsG6PKFcLRCpP7+g3YI5csV9D
 ajfy67QTdC7ULRpCXH/YD0NTyGGKvnO6ytNdhHpWEceQLra5Tb/ggX6PQeMvZFXLB4/s=;
Received: from mail-dbaeur03on2093.outbound.protection.outlook.com
 ([40.107.104.93] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCH0C-00BNo1-JD for tipc-discussion@lists.sourceforge.net;
 Thu, 22 Jun 2023 09:53:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ecSwW9xZxWhYAaGX0jGv/wlmRFFqUNA1gpOKeD0CsL63tL2kL9HK6Dx+TMG/8MOHOXtqTB5CAP4qIxbqbkrmZDX1PnRk/eqW2kuXXY1eiGKAsLpSpe/8iebXKEYpky6o/BvO2nw1i6l16c8lrkWmkPOsNHFfR2SrwnvVzK8iq3fHCMCITQJyiMPesuxklxMMswv9ljGKVWWvIF7v6/OqUkzzMTYvtb0VuE6cxI7xIUK/IcjqruPCg9wPx0nTJJoUUwWbR0lQNlaN0VCkHm+mtxo9T92SYhdRx10YqLnihe3ssZQZTBbZfA3q9VF/F/JdwSn/s81sE8Qny2sM2fAu+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nHT+kADBNK6blWHOmx1GVSpUgrUe7KDvxclVX2eQmK8=;
 b=YO8zhdmGP7jjXTG7GPEraucPaL8pwaPkbunjsc3WeqA5TquNDSuB6jLkpAzl1dnTFHDnoP7OYQvmsYiArFqVUu3S530BNle1+9bDIvFWpZuqVKSvOd7EoBw8vttq3cZ2H8Xxmn0J5JMZL5OSpBmCeZwUTiNSpx97CqCWX57IAITmnlBgYyvv/fKDvTprafbwuo64lvMWFxBNacYnx5S3+jMYgUJm6p89VdR2hmIL6bhEE/zR9wWAP41DQzyDnZ2Sf8t221O+tQ/6BReani8AUUuh5K5fSdpkI+sX6WDaPu3zCFURs5PslUk2yHZKkzbPu7FCaQJlqoPhprwYYdcN5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nHT+kADBNK6blWHOmx1GVSpUgrUe7KDvxclVX2eQmK8=;
 b=ao2pxuwdG/nuDMjFq8ru4t8TPIOcHJwzzbQageaXkydmg4AiaFtyR20hDyvAQEIyC9opfO5VrnFo0Cqis8VW7akH5e9einT9D7VStF7XC7eXLKvvFOzQYnSsuKR0rTPYOBpU1XxzQypebWWzpZWMYoWb3KehaDLkxIN0rglyNUg=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM8PR05MB8147.eurprd05.prod.outlook.com (2603:10a6:20b:360::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 09:38:57 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::e2bd:186:9dfe:1fc3%7]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 09:38:57 +0000
To: Rune Torgersen <runet@innovsys.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC out-of-order publish message
Thread-Index: Admjvh3Dz94vxOkrT2iyOU+KitnwHwASv4w3AA4J7CAAAVc4cAApe8p1
Date: Thu, 22 Jun 2023 09:38:57 +0000
Message-ID: <DB9PR05MB90782273D2F9EF47EEF510A28822A@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <DM5PR1301MB19955F75723A04B9C6EBE3CAC45CA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DB9PR05MB907890FF4DE02BEAB6E80EAC885DA@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <DM5PR1301MB19955167B7004B600128DDA7C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
 <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR1301MB19958A8131373193525AA774C45DA@DM5PR1301MB1995.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|AM8PR05MB8147:EE_
x-ms-office365-filtering-correlation-id: bd071a05-c1ed-4a98-e8b8-08db73048037
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XzYtb0xipd6V9fXhdzcglT1droVFiftkBK4AuNRv/SNo2coo8a17jpgFE9JHBcHCCm7Lsl308mVgipRigp4Dml5NAbQHF6+eu+F715BzZrf1Phze77hxFFyYW7AFcIuZP98qA5/GkDcP/Y0KurLfgfqbqFlmUMg+bNzzli0vS3PzypCzZUp2No3DhL1ki0LtpWbclqgtmYwQn+PlXPSzb8Ra9z6xg3Xz2nMPYaKXFjOEwPF0U6lILYZTXXVf/iLk+5R/932ZvT3xLvxrzF+XwpcdNJixLPh49AsKh0crXNexyRUAK9E6KpYjw2zmZfeW6KFTbJi8mPBJ4h/QGqqfn14DjH8ItsVppNWiS7w+6vTV4ZeFpfct7sD8PAUHL7fBza+dgkUWKz7ZK4jPHOl+QVoG+JiiBP3RDOyd1ldTEVPOxvQGg1030RzHvjGuV3/+VLgN3WI0trhpekq1xy2jrqbcBq4rkvHPCxEeVvqw5WpylfywRIwSqFB6Q+L6Gop/kCMymLTowI5uv8r54GhfoLioR77rYAF8yoRJR7BazcdyJlYq6cwnQqSrriW969xAeV6hRtDviwdu9czzgB9AikSIe7Bj6xmznhnFkfeslknhqCrBgWl/WyE3Fgkq+z1l
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(396003)(39850400004)(376002)(366004)(451199021)(66556008)(66446008)(91956017)(66476007)(66946007)(64756008)(186003)(122000001)(38100700002)(9686003)(26005)(38070700005)(6506007)(86362001)(83380400001)(76116006)(110136005)(478600001)(33656002)(7696005)(71200400001)(55016003)(4744005)(2906002)(52536014)(5660300002)(19627405001)(8936002)(8676002)(15650500001)(316002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ctvC++qTknYVGoz1ngwu7jyaQiOPFVFMdK3XXqg20ariOT46bgWR936+kv?=
 =?iso-8859-1?Q?e9TpFOzY/CgOhZEIJz9jXuGLntcGfupRpVzLMXsIxNMq6rC6uUMWRh3cGQ?=
 =?iso-8859-1?Q?4n0N5FRvf4/ObiqVfzMbVm2LyNGQ6p0NiOfJkmp6hoW7eMT+SwcbYUP7xs?=
 =?iso-8859-1?Q?wSARIfqhuhCOCqlZs+BAThFy2tivhVq+qlQeEQSWp1nkTDMh1G4wH6K8Sr?=
 =?iso-8859-1?Q?DPVxwsacOnTp89+3M3YlE+BT21KTMVPffnf+023ujq5sJCyJrnHaW9KjZc?=
 =?iso-8859-1?Q?X8ZjzW6EvuYj3SQaClBT8msnVP0x9LVOztMJHJGqiAfyxrzQSvy5gnd7fY?=
 =?iso-8859-1?Q?vtq3qKYlhzNBcahvqA+VK2hWT7qreEJUz1YT5Z6YSnojKG+BJZ+klBiRZu?=
 =?iso-8859-1?Q?Lr9CECnKHRyV5AGhVwSYnUZKeJTEjJn2PiQ6Fu0XzfqRqswKm4SidizZDw?=
 =?iso-8859-1?Q?0dDloasCsN2128r985KTvA8RMLn/X1VQnFx86CFlFDfRMSRHe5JN9g3nwK?=
 =?iso-8859-1?Q?//II6pGwxPA11/dsYfwN24xlGYmnJGYKM/wpYK+kKG4iAEY0JsOzPPT/+3?=
 =?iso-8859-1?Q?UiemAiG0btgWn1bUHlYOxhtnZcsg7/bow7lmUstHbAvfXBbhcfWOZhF18j?=
 =?iso-8859-1?Q?S9ILx31yn6oeB8aQhjDb/irgLXOr9J2TGdBohcvR+p9d2YKfY5GZsBwS9g?=
 =?iso-8859-1?Q?tlUUUNRu1/k+AQ3JPKc0XZoMWnZMySITNI1Y5PjGlob7RmY/HmeVlq7Y/o?=
 =?iso-8859-1?Q?5bmnoEJiN1O1bOxxz0jQ0khn+kH9YlofUKsof3Nnkw48rneRMVpkHdsGCP?=
 =?iso-8859-1?Q?WHr6YScgV3AQsKjtbxImqUO9dwRUBzaEg55x1jD927yqidayB11tF1D27F?=
 =?iso-8859-1?Q?M0qMRVygvRpHCS9QhvzqH9dPHut+fPaRIwDwIq/TPuHDEYfregVS4cdH52?=
 =?iso-8859-1?Q?N9btmCR3kRqQsyZ6V1SVroztRpbofVHoT8P16JgfT7sR7b/J1Tq7bmOpV8?=
 =?iso-8859-1?Q?+y866WGP31TJTyHe7oFaSnip6btoFmIhxkQBZ2H7+G4GudzG3khvldWtoF?=
 =?iso-8859-1?Q?ZSLkpfoMhpLhiDEQwNDCtTI0R03DZh8E8ganpqwQzGgquHHblnW3slRlao?=
 =?iso-8859-1?Q?rmck0ovz+moHRgNmDFuKKcgxo/ksq1ZqF/3ed7Ao+y5bNovXeyy9WdflC3?=
 =?iso-8859-1?Q?aUzNOUc5sFXnzZjjkqHqf1XJrhHcRhCL56N9JwVrezOHhjGFatwM/Sf9vG?=
 =?iso-8859-1?Q?BfKOtUXDy9MNcHgrGo17T8itFQSuJpI796sz4HrzWgMETeQqC3wF0Ox+N7?=
 =?iso-8859-1?Q?u0bZEIy8VGeiJzmPZ7P/B548ek/Zq4kwAweuwJzZ9rGR5NBkFpLeKM7TDJ?=
 =?iso-8859-1?Q?M1qkC6FS+V+m7/FbbRXIzH01OhWO+3zCTAuUxTGyKYcIvMATjlAgCGE+wm?=
 =?iso-8859-1?Q?sCDJbdBFHPlTpUzG/50fPaj8/qyISfR3HeoPJACDSm8yrO8qUbdCTyff+H?=
 =?iso-8859-1?Q?ATWwHkPrbtXSrZzMjmWdn/vwPX4O8BQ3pVDr3hgoUG8HQcA0OcZjkNmBq0?=
 =?iso-8859-1?Q?Lb3UynoDWmjD0C6wBilsLxXAHRDYdM4goU1mTuopgAjjg4scpBNJPuXJ+8?=
 =?iso-8859-1?Q?hesy7MYtdRrp8SOXGjlucfkX5Rs4eoffgaU9C7rFZrqQq9rVwlrXflgQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd071a05-c1ed-4a98-e8b8-08db73048037
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 09:38:57.0846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Q2X7qG3owjHq79BgSkjZ8CHEsyT7hUh45aZD64GR5HycsWoXkpeEd6NAgFj73a9wh66dgQ/ZzHYSSE9RaG/7utehOrA1iOf2Pyfcn8WUhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR05MB8147
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Also, since the publish and unicast is not guaranteed in
 order, should not reception of a unicast data message before a publish update
 the publish table on the receiving end so you can expect to rep [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.104.93 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.104.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qCH0C-00BNo1-JD
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

> Also, since the publish and unicast is not guaranteed in order, should not reception of a unicast data message before a publish update the publish table on the receiving end so you can expect to reply back immediately.
No, receiving of user data messages does not update the naming table. It is done via the protocol's internal published messages.

> Take UDP as the other datagram protocol. You are expected to be able to send back a reply to the sending socket immediately upon reception of a message, as by receiving it you know the farend is up.
The same thing for TIPC if you send back your messages using  known service.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
