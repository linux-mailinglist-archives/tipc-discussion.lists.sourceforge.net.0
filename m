Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E96EE85CE
	for <lists+tipc-discussion@lfdr.de>; Tue, 29 Oct 2019 11:36:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPOro-0008Es-OS; Tue, 29 Oct 2019 10:36:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iPOrm-0008EQ-Vo
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Oct 2019 10:36:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P8yGROCt3pOjA/6Mph8fdVF01ug6Dt2g3AOra4SWofM=; b=dqLjvYqzcGahR/7WiAePJsKy5d
 hNM/juKClB7JjKt3BGjDu9TkyaRabZVuAW5ct05i2dw6wE2tR65ynEg9Mxan5JWyGNajb4Pq4vL6f
 w8fFDXKUmKqOQXoQzhmSkt9JHTVeeC3x7IEVxt7Z+IMn9OGfgk9Qm+2DhDO2Bu2EXHE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P8yGROCt3pOjA/6Mph8fdVF01ug6Dt2g3AOra4SWofM=; b=FlOEgBK16AiSNc84gaEwqYciKC
 lCIMxKXoSEP9DoOnccVED3AGMgi1fdZXixSwh+UdfmEh79DeswBa8HrUFMvxSUWly1cjd2++8XKSS
 jmjv9ME6JXgQw6ubHM8O1CBvFjLe1STbAB2TfCEvVaAfdbx+2AJXDkLp1wof3MqvO8I4=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iPOrl-005lDE-41
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Oct 2019 10:36:46 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x9TAaJdi022905
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Tue, 29 Oct 2019 03:36:19 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 29 Oct
 2019 03:36:19 -0700
To: Jon Maloy <jon.maloy@ericsson.com>, Jon Maloy <maloy@donjonn.com>
References: <1572284277-26784-1-git-send-email-jon.maloy@ericsson.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <054b985e-c8ad-56c5-c8e7-dad554629c64@windriver.com>
Date: Tue, 29 Oct 2019 18:23:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1572284277-26784-1-git-send-email-jon.maloy@ericsson.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iPOrl-005lDE-41
Subject: Re: [tipc-discussion] [net-next v3 1/1] tipc: add smart nagle
 feature
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
Cc: tipc-discussion@lists.sourceforge.net,
 mohan.krishna.ghanta.krishnamurthy@ericsson.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 10/29/19 1:37 AM, Jon Maloy wrote:
> @@ -3007,6 +3068,9 @@ static int tipc_setsockopt(struct socket *sock, int lvl, int opt,
>  	case TIPC_GROUP_LEAVE:
>  		res = tipc_sk_leave(tsk);
>  		break;
> +	case TIPC_NODELAY:
> +		tsk->nodelay = true;
> +		break;
>  	default:
>  		res = -EINVAL;
>  	}

Once user sets tsk->nodelay to true, there is no chance to set it back
to false. Although this scenario rarely happens for us, it's better that
we can provide the function.

For example, below is how TCP supports TCP_NODELAY option:

        case TCP_NODELAY:
                if (val) {
                        /* TCP_NODELAY is weaker than TCP_CORK, so that
                         * this option on corked socket is remembered, but
                         * it is not activated until cork is cleared.
                         *
                         * However, when TCP_NODELAY is set we make
                         * an explicit push, which overrides even TCP_CORK
                         * for currently queued segments.
                         */
                        tp->nonagle |= TCP_NAGLE_OFF|TCP_NAGLE_PUSH;
                        tcp_push_pending_frames(sk);
                } else {
                        tp->nonagle &= ~TCP_NAGLE_OFF;
                }
                break;


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
